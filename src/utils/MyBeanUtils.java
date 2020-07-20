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
			//由于BeanUtils将字符串"1992-3-3"向user对象的setBirthday();方法传递参数有问题，手动想BeanUtils注册一个时间类型
			//1_创建时间类型的转化器
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
			//由于BeanUtils将字符串"1992-3-3"向user对象的setBirthday();方法传递参数有问题，手动想BeanUtils注册一个时间类型
			//1_创建时间类型的转化器
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
