package cn.makangning.mapper;

import cn.makangning.entity.Cost;
import java.util.List;

public interface CostMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cost
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    int deleteByPrimaryKey(Integer coid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cost
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    int insert(Cost record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cost
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    Cost selectByPrimaryKey(Integer coid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cost
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    List<Cost> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cost
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    int updateByPrimaryKey(Cost record);
}