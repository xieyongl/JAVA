package com.xy.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {

	public static void main(String[] args) {
		System.out.println(getMd5("hello java"));
		System.out.println(getMd5("haha"));
	}

	/**
	 * 返回md5加密后的密文，密文都为32位16进制表示的字符串
	 * 
	 * @param str
	 *            源字符串
	 * @return 加密后的字符串
	 */
	public static String getMd5(String str) {
		String md5Str = new String();
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes());
            byte b[] = md.digest();
            int bit;
            StringBuilder buf = new StringBuilder("");
            for (int offset = 0; offset < b.length; offset++) {
            	bit = b[offset];
                if (bit < 0)
                	bit += 256;
                if (bit < 16)
                    buf.append("0");
                buf.append(Integer.toHexString(bit));
            }
            md5Str = buf.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return md5Str;
	}

}
