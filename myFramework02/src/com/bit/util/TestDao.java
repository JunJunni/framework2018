package com.bit.util;

import java.sql.SQLException;

import com.bit.model.BbsDao;
import com.bit.model.entity.BbsVo;

public class TestDao {
	public static void main(String[] args) {
		BbsDao dao = new BbsDao();
		try {
			BbsVo bean = dao.selectOne(1);
			System.out.println(bean);
			int result = dao.updateOne(new BbsVo(1, "test1", "test", null, 0));
			if (result > 0)System.out.println("수정성공");
				System.out.println(dao.selectOne(1));
				result = dao.delOne(1);
				if (result > 0)	System.out.println("삭제성공");
				System.out.println(dao.selectOne(1));
		} catch (SQLException e) {

		}
	}
}
