package utils;




import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;

public class MyBeanUtils {
	public static void populate(Object obj , Map<String, String> map){
		try {
			//����BeanUtils���ַ���"1992-3-3"��user�����setBirthday();�������ݲ��������⣬�ֶ���BeanUtilsע��һ��ʱ������
			//1_����ʱ�����͵�ת����
			DateConverter dt = new DateConverter();
			dt.setPattern("yyyy-MM-dd");
			ConvertUtils.register(dt, Date.class);
			BeanUtils.populate(obj, map);
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
	}
	public static<T> T populate(Class<T> clazz , Map<String,String[]> map){
		try {
			T obj = clazz.newInstance();
			//����BeanUtils���ַ���"1992-3-3"��user�����setBirthday();�������ݲ��������⣬�ֶ���BeanUtilsע��һ��ʱ������
			//1_����ʱ�����͵�ת����
			DateConverter dt = new DateConverter();
			dt.setPattern("yyyy-MM-dd");
			ConvertUtils.register(dt, Date.class);
			BeanUtils.populate(obj, map);
			return obj;
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
	}
}
