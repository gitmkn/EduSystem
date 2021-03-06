package cn.makangning.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Cost {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cost.coid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    private Integer coid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cost.uid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    private User user;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cost.cid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    private Course course;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cost.createtime
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    private Date createtime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cost.money
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    private BigDecimal money;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cost.state
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    private Integer state;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cost.coid
     *
     * @return the value of cost.coid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public Integer getCoid() {
        return coid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cost.coid
     *
     * @param coid the value for cost.coid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public void setCoid(Integer coid) {
        this.coid = coid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cost.uid
     *
     * @return the value of cost.uid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public User getUser() {
        return user;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cost.uid
     *
     * @param user the value for cost.uid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cost.cid
     *
     * @return the value of cost.cid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public Course getCourse() {
        return course;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cost.cid
     *
     * @param course the value for cost.cid
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public void setCourse(Course course) {
        this.course = course;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cost.createtime
     *
     * @return the value of cost.createtime
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cost.createtime
     *
     * @param createtime the value for cost.createtime
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cost.money
     *
     * @return the value of cost.money
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public BigDecimal getMoney() {
        return money;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cost.money
     *
     * @param money the value for cost.money
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cost.state
     *
     * @return the value of cost.state
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public Integer getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cost.state
     *
     * @param state the value for cost.state
     *
     * @mbg.generated Tue May 21 08:40:25 CST 2019
     */
    public void setState(Integer state) {
        this.state = state;
    }

	@Override
	public String toString() {
		return "Cost [coid=" + coid + ", user=" + user + ", course=" + course + ", createtime=" + createtime
				+ ", money=" + money + ", state=" + state + "]";
	}
    
}