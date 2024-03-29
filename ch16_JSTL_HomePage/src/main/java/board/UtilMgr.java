package board;

import java.io.File;
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
	
	public static void delete(String s) {
		File file = new File(s);
		if(file.isFile()) {
			file.delete();		//BoardMgr 파일 삭제메서드
		}
	}
}