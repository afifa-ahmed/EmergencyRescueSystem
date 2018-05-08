package util;
import java.util.Base64;

public class Paillier {

	public static String decrypt(String str) {
//		byte b[] = new byte[str.length()];
//		byte result[] = new byte[str.length()];
//		b = str.getBytes();
//		for (int i = 0; i < str.length(); i++) {
//			result[i] = (byte) ((byte) b[i] + (byte) 4);
//			System.out.println(b[i] + "-" + result[i]);
//		}
		byte[] result = Base64.getDecoder().decode(str.getBytes());
		return (new String(result));
	}
}
