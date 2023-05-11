package board;

import java.io.UnsupportedEncodingException;

public class UtilMgr {
	public static String con(String s) {
		String str = null;
		try {
			str = new String(s.getBytes("8859_1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return str;
	}
}