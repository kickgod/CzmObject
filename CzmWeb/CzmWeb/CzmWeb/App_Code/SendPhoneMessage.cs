using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace CzmObject.App_Code
{
    public class SendPhoneMessage
    {
        private string THE_UID = "544956252@qq.com"; //用户名
        private string THE_KEY = "c8cd9edc71dbe46db40a"; //接口秘钥
        /// <summary>返回UTF-8编码发送接口地址</summary>
        /// <param name="receivePhoneNumber">目的手机号码（多个手机号请用半角逗号隔开）</param>
        /// <param name="receiveSms">短信内容，最多支持400个字，普通短信70个字/条，长短信64个字/条计费</param>
        /// <returns></returns>
        public string GetPostUrl(string smsMob, string smsText)
        {
            string postUrl = "http://utf8.sms.webchinese.cn/?Uid=" + THE_UID + "&key=" + THE_KEY + "&smsMob=" + smsMob + "&smsText=" + smsText;
            return postUrl;
        }
        /// <summary> 发送短信，得到返回值</summary>
        public string PostSmsInfo(string url)
        {
            //调用时只需要把拼成的URL传给该函数即可。判断返回值即可
            string strRet = null;
            if (url == null || url.Trim().ToString() == "")
            {
                return strRet;
            }
            string targeturl = url.Trim().ToString();
            try
            {
                HttpWebRequest hr = (HttpWebRequest)WebRequest.Create(targeturl);
                hr.UserAgent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";
                hr.Method = "GET";
                hr.Timeout = 30 * 60 * 1000;
                WebResponse hs = hr.GetResponse();
                Stream sr = hs.GetResponseStream();
                StreamReader ser = new StreamReader(sr, Encoding.Default);
                strRet = ser.ReadToEnd();
            }
            catch (Exception ex)
            {
                strRet = null;
            }
            return strRet;
        }
        /// <summary>
        /// 确认返回信息 
        /// </summary>
        /// <param name="strRet">状态码</param>
        /// <returns></returns>
        public string GetResult(string strRet)
        {
            int result = 0;
            try
            {
                result = int.Parse(strRet);
                switch (result)
                {
                    case -1:
                        strRet = "没有该用户账户";
                        break;
                    case -2:
                        strRet = "接口密钥不正确,不是账户登陆密码";
                        break;
                    case -21:
                        strRet = "MD5接口密钥加密不正确";
                        break;
                    case -3:
                        strRet = "短信数量不足";
                        break;
                    case -11:
                        strRet = "该用户被禁用";
                        break;
                    case -14:
                        strRet = "短信内容出现非法字符";
                        break;
                    case -4:
                        strRet = "手机号格式不正确";
                        break;
                    case -41:
                        strRet = "手机号码为空";
                        break;
                    case -42:
                        strRet = "短信内容为空";
                        break;
                    case -51:
                        strRet = "短信签名格式不正确,接口签名格式为：【签名内容】";
                        break;
                    case -6:
                        strRet = "IP限制";
                        break;
                    default:
                        strRet = "发送短信数量：" + result;
                        break;
                }
            }
            catch (Exception ex)
            {
                strRet = ex.Message;
            }
            return strRet;
        }
        /// <summary>
        /// 发生短信
        /// </summary>
        /// <param name="smsMob">手机号码，多个手机号码以逗号分开</param>
        /// <param name="smsText">短信内容！</param>
        /// <returns></returns>
        public String SendMessage(string smsMob, string smsText)
        {
            String url = GetPostUrl(smsMob, smsText);
            String urls = PostSmsInfo(url);
            String result= GetResult(urls);
            return result;
        }
        /// <summary>
        /// 产生随机数
        /// </summary>
        /// <returns></returns>
        public String GenerateVerificationCode()
        {
            Random rand = new Random(DateTime.Now.Millisecond);
            String OneCode = rand.Next(10,99).ToString();
            String TwoCode = rand.Next(10,99).ToString();
            return OneCode + TwoCode;
        }
    }

}