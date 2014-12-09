package org.mindlinks.Bean;

import java.sql.Date;

import org.hibernate.search.annotations.DocumentId;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;

/**
 * @author win
 *
 */
@Indexed
public class Profile
{

	private String firstname;

	private String middlename;

	private String lastname;
	
	private String countrycode;

	public String getCountrycode()
	{
		return countrycode;
	}

	public void setCountrycode(String countrycode)
	{
		this.countrycode = countrycode;
	}

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String gender;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private int age;

	private Date dateofbirth;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String religion;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String caste;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String subcaste;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String mothertongue;

	private String workplace;

	private String currentworkstatus;

	private String photo;

	private Date photouploadeddate;

	private Date profilecreateddate;

	private Date lastmodifieddate;

	private String createdby;

	private String lastmodifiedby;

	private String email;

	private String countrylivingin;

	private String mobileno;

	private String phoneno;

	private String username;

	private String rashi;

	private String nakshatra;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String profession;
	

	private String fathername;
	private String fatheroccupation;
	private String mothername;
	private String motheroccupation;
	private String sibblings;
	private String noofbrothers;
	private String noofsisters;
	

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String education;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String country;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String state;

	private String city;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String martialstatus;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String companyname;
	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String mulitipleeducaaiondeatiles;

	
	
	public String getMulitipleeducaaiondeatiles()
	{
		return mulitipleeducaaiondeatiles;
	}

	public void setMulitipleeducaaiondeatiles(String mulitipleeducaaiondeatiles)
	{
		this.mulitipleeducaaiondeatiles = mulitipleeducaaiondeatiles;
	}

	private String hobbies;

	private String interests;

	private String annualincome;

	private String aboutyourSelf;

	private Date logindate;

	private String lastlogintime;

	private String companyno;

	private String horoscope;

	private Date horoscopeuploadeddate;

	private String fromage;

	private String toage;

	private String paidstatus;

	private Date paymentdate;

	private String paymenttype;

	private String comments;

	private String isadmin;

	private String referenceid;

	private String residencecountry;

	private String residencestd;

	private int hfeet;

	private Float hinch;
	
	private String havechildren;
	
	private String currency;
	

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String name;

	@Field(index = Index.TOKENIZED, store = Store.NO)
	private String profilestatus;

	private float amountpaid;
	
	private String inactive;

	@DocumentId
	private int profileid;

	public String getFirstname()
	{
		return firstname;
	}

	public void setFirstname(String firstname)
	{
		this.firstname = firstname;
	}

	public String getProfession()
	{
		return profession;
	}

	public void setProfession(String profession)
	{
		this.profession = profession;
	}

	public String getMiddlename()
	{
		return middlename;
	}

	public void setMiddlename(String middlename)
	{
		this.middlename = middlename;
	}

	public String getLastname()
	{
		return lastname;
	}

	public void setLastname(String lastname)
	{
		this.lastname = lastname;
	}

	public String getGender()
	{
		return gender;
	}

	public void setGender(String gender)
	{
		this.gender = gender;
	}

	public int getAge()
	{
		return age;
	}

	public void setAge(int age)
	{
		this.age = age;
	}

	public Date getDateofbirth()
	{
		return dateofbirth;
	}

	public void setDateofbirth(Date dateofbirth)
	{
			this.dateofbirth = dateofbirth;
			
	}

	public String getReligion()
	{
		return religion;
	}

	public void setReligion(String religion)
	{
		this.religion = religion;
	}

	public String getCaste()
	{
		return caste;
	}

	public void setCaste(String caste)
	{
		this.caste = caste;
	}

	public String getSubcaste()
	{
		return subcaste;
	}

	public void setSubcaste(String subcaste)
	{
		this.subcaste = subcaste;
	}

	public String getMothertongue()
	{
		return mothertongue;
	}

	public void setMothertongue(String mothertongue)
	{
		this.mothertongue = mothertongue;
	}

	public String getWorkplace()
	{
		return workplace;
	}

	public void setWorkplace(String workplace)
	{
		this.workplace = workplace;
	}

	public String getCurrentworkstatus()
	{
		return currentworkstatus;
	}

	public void setCurrentworkstatus(String currentworkstatus)
	{
		this.currentworkstatus = currentworkstatus;
	}

	public String getPhoto()
	{
		return photo;
	}

	public void setPhoto(String photo)
	{
		this.photo = photo;
	}

	public Date getPhotouploadeddate()
	{
		return photouploadeddate;
	}

	public void setPhotouploadeddate(Date photouploadeddate)
	{
		this.photouploadeddate = photouploadeddate;
	}

	public Date getProfilecreateddate()
	{
		return profilecreateddate;
	}

	public void setProfilecreateddate(Date profilecreateddate)
	{
		this.profilecreateddate = profilecreateddate;
	}

	public Date getLastmodifieddate()
	{
		return lastmodifieddate;
	}

	public void setLastmodifieddate(Date lastmodifieddate)
	{
		this.lastmodifieddate = lastmodifieddate;
	}

	public String getCreatedby()
	{
		return createdby;
	}

	public void setCreatedby(String createdby)
	{
		this.createdby = createdby;
	}

	public String getLastmodifiedby()
	{
		return lastmodifiedby;
	}

	public void setLastmodifiedby(String lastmodifiedby)
	{
		this.lastmodifiedby = lastmodifiedby;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getCountrylivingin()
	{
		return countrylivingin;
	}

	public void setCountrylivingin(String countrylivingin)
	{
		this.countrylivingin = countrylivingin;
	}

	public String getUsername()
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}

	public String getRashi()
	{
		return rashi;
	}

	public void setRashi(String rashi)
	{
		this.rashi = rashi;
	}

	public String getNakshatra()
	{
		return nakshatra;
	}

	public void setNakshatra(String nakshatra)
	{
		this.nakshatra = nakshatra;
	}

	public String getEducation()
	{
		return education;
	}

	public void setEducation(String education)
	{
		this.education = education;
	}

	public String getCountry()
	{
		return country;
	}

	public void setCountry(String country)
	{
		this.country = country;
	}

	public String getState()
	{
		return state;
	}

	public void setState(String state)
	{
		this.state = state;
	}

	public String getCity()
	{
		return city;
	}

	public void setCity(String city)
	{
		this.city = city;
	}

	public String getMartialstatus()
	{
		return martialstatus;
	}

	public void setMartialstatus(String martialstatus)
	{
		this.martialstatus = martialstatus;
	}

	public String getCompanyname()
	{
		return companyname;
	}

	public void setCompanyname(String companyname)
	{
		this.companyname = companyname;
	}

	public String getCompanyno()
	{
		return companyno;
	}

	public void setCompanyno(String companyno)
	{
		this.companyno = companyno;
	}

	public String getHobbies()
	{
		return hobbies;
	}

	public void setHobbies(String hobbies)
	{
		this.hobbies = hobbies;
	}

	public String getInterests()
	{
		return interests;
	}

	public void setInterests(String interests)
	{
		this.interests = interests;
	}

	public String getAboutyourSelf()
	{
		return aboutyourSelf;
	}

	public void setAboutyourSelf(String aboutyourSelf)
	{
		this.aboutyourSelf = aboutyourSelf;
	}

	public Date getLogindate()
	{
		return logindate;
	}

	public void setLogindate(Date logindate)
	{
		this.logindate = logindate;
	}

	public String getLastlogintime()
	{
		return lastlogintime;
	}

	public void setLastlogintime(String lastlogintime)
	{
		this.lastlogintime = lastlogintime;
	}

	public int getProfileid()
	{
		return profileid;
	}

	public void setProfileid(int profileid)
	{
		this.profileid = profileid;
	}

	public String getMobileno()
	{
		return mobileno;
	}

	public void setMobileno(String mobileno)
	{
		this.mobileno = mobileno;
	}

	public String getPhoneno()
	{
		return phoneno;
	}

	public void setPhoneno(String phoneno)
	{
		this.phoneno = phoneno;
	}

	public String getAnnualincome()
	{
		return annualincome;
	}

	public void setAnnualincome(String annualincome)
	{
		this.annualincome = annualincome;
	}

	public String getHoroscope()
	{
		return horoscope;
	}

	public void setHoroscope(String horoscope)
	{
		this.horoscope = horoscope;
	}

	

	public Date getHoroscopeuploadeddate()
	{
		return horoscopeuploadeddate;
	}

	public void setHoroscopeuploadeddate(Date horoscopeuploadeddate)
	{
		this.horoscopeuploadeddate = horoscopeuploadeddate;
	}

	public String getFromage()
	{
		return fromage;
	}

	public void setFromage(String fromage)
	{
		this.fromage = fromage;
	}

	public String getToage()
	{
		return toage;
	}

	public void setToage(String toage)
	{
		this.toage = toage;
	}

	public String getPaidstatus()
	{
		return paidstatus;
	}

	public void setPaidstatus(String paidstatus)
	{
		this.paidstatus = paidstatus;
	}

	public Date getPaymentdate()
	{
		return paymentdate;
	}

	public void setPaymentdate(Date paymentdate)
	{
		this.paymentdate = paymentdate;
	}

	public String getPaymenttype()
	{
		return paymenttype;
	}

	public void setPaymenttype(String paymenttype)
	{
		this.paymenttype = paymenttype;
	}

	public String getComments()
	{
		return comments;
	}

	public void setComments(String comments)
	{
		this.comments = comments;
	}

	public String getIsadmin()
	{
		return isadmin;
	}

	public void setIsadmin(String isadmin)
	{
		this.isadmin = isadmin;
	}

	public String getReferenceid()
	{
		return referenceid;
	}

	public void setReferenceid(String referenceid)
	{
		this.referenceid = referenceid;
	}

	public String getProfilestatus()
	{
		return profilestatus;
	}

	public void setProfilestatus(String profilestatus)
	{
		this.profilestatus = profilestatus;
	}

	public String getResidencecountry()
	{
		return residencecountry;
	}

	public void setResidencecountry(String residencecountry)
	{
		this.residencecountry = residencecountry;
	}

	public String getResidencestd()
	{
		return residencestd;
	}

	public void setResidencestd(String residencestd)
	{
		this.residencestd = residencestd;
	}

	public int getHfeet()
	{
		return hfeet;
	}

	public void setHfeet(int hfeet)
	{
		this.hfeet = hfeet;
	}

	public Float getHinch()
	{
		return hinch;
	}

	public void setHinch(Float hinch)
	{
		this.hinch = hinch;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}


	public float getAmountpaid()
	{
		return amountpaid;
	}

	public void setAmountpaid(float amountpaid)
	{
		this.amountpaid = amountpaid;
	}

	public void setMotheroccupation(String motheroccupation)
	{
		this.motheroccupation = motheroccupation;
	}

	public String getMotheroccupation()
	{
		return motheroccupation;
	}

	public void setSibblings(String sibblings)
	{
		this.sibblings = sibblings;
	}

	public String getSibblings()
	{
		return sibblings;
	}

	public void setMothername(String mothername)
	{
		this.mothername = mothername;
	}

	public String getMothername()
	{
		return mothername;
	}

	public void setFatheroccupation(String fatheroccupation)
	{
		this.fatheroccupation = fatheroccupation;
	}

	public String getFatheroccupation()
	{
		return fatheroccupation;
	}

	public void setFathername(String fathername)
	{
		this.fathername = fathername;
	}

	public String getFathername()
	{
		return fathername;
	}

	public void setNoofbrothers(String noofbrothers)
	{
		this.noofbrothers = noofbrothers;
	}

	public String getNoofbrothers()
	{
		return noofbrothers;
	}

	public void setNoofsisters(String noofsisters)
	{
		this.noofsisters = noofsisters;
	}

	public String getNoofsisters()
	{
		return noofsisters;
	}

	public String getHavechildren() {
		return havechildren;
	}

	public void setHavechildren(String havechildren) {
		this.havechildren = havechildren;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getInactive()
	{
		return inactive;
	}

	public void setInactive(String inactive)
	{
		this.inactive = inactive;
	}
	
	

}
