package junit.test;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.junit.Test;

public class TestMap {
	@Test
	public void test() {
	//Map map=new LinkedHashMap<Integer,String>();//ÓĞĞò
	Map map=new HashMap<String,String>();//´æ´¢ÎŞĞò
	map.put("1", "1");
	map.put("2", "2");
	map.put("3", "3");
	map.put("4", "4");
	map.put("5", "5");
	map.put("6", "6");
	map.put("7", "7");
	map.put("8", "8");
	map.put("9", "9");
	map.put("10", "10");
	Set<Entry<String, String>> set=map.entrySet();
	for(Entry<String, String> entry :set) {
		System.out.println(entry.getKey()+":"+entry.getValue());
		}
	}
}
