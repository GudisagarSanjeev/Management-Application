#include "EmployeeInfo.h"

EmployeeInfo::EmployeeInfo()
{

}

EmployeeInfo::EmployeeInfo(QString empid, QString firstname, QString lastname, QString fathername, QString address1, QString address2, QString location, QString zipcode, QString state, QString email, QString phone, QString emergencyContact, QUrl image,QString noofdays)
{
    setEmpid(empid);
    setFirstname(firstname);
    setLastname(lastname);
    setFathername(fathername);
    setAddress1(address1);
    setLocation(location);
    setZipcode(zipcode);
    setState(state);
    setEmail(email);
    setPhone(phone);
    setEmergencycontact(emergencyContact);
    setImage(image);
    setAddress2(address2);
    setNoofdays(noofdays);
}

QString EmployeeInfo::getFirstname() const
{
    return firstname;
}

void EmployeeInfo::setFirstname(const QString &value)
{
    firstname = value;
}

QString EmployeeInfo::getLastname() const
{
    return lastname;
}

void EmployeeInfo::setLastname(const QString &value)
{
    lastname = value;
}

QString EmployeeInfo::getFathername() const
{
    return fathername;
}

void EmployeeInfo::setFathername(const QString &value)
{
    fathername = value;
}

QString EmployeeInfo::getLocation() const
{
    return location;
}

void EmployeeInfo::setLocation(const QString &value)
{
    location = value;
}

QString EmployeeInfo::getZipcode() const
{
    return zipcode;
}

void EmployeeInfo::setZipcode(const QString &value)
{
    zipcode = value;
}

QString EmployeeInfo::getState() const
{
    return state;
}

void EmployeeInfo::setState(const QString &value)
{
    state = value;
}

QString EmployeeInfo::getEmail() const
{
    return email;
}

void EmployeeInfo::setEmail(const QString &value)
{
    email = value;
}

QString EmployeeInfo::getPhone() const
{
    return phone;
}

void EmployeeInfo::setPhone(const QString &value)
{
    phone = value;
}

QString EmployeeInfo::getEmergencycontact() const
{
    return emergencycontact;
}

void EmployeeInfo::setEmergencycontact(const QString &value)
{
    emergencycontact = value;
}

QUrl EmployeeInfo::getImage() const
{
    return image;
}

void EmployeeInfo::setImage(const QUrl &value)
{
    image = value;
}

QString EmployeeInfo::getEmpid() const
{
    return empid;
}

void EmployeeInfo::setEmpid(const QString &value)
{
    empid = value;
}

QString EmployeeInfo::getAddress2() const
{
    return address2;
}

void EmployeeInfo::setAddress2(const QString &value)
{
    address2 = value;
}

QString EmployeeInfo::getAddress1() const
{
    return address1;
}

void EmployeeInfo::setAddress1(const QString &value)
{
    address1 = value;
}

QString EmployeeInfo::getNoofdays() const
{
    return noofdays;
}

void EmployeeInfo::setNoofdays(const QString &value)
{
    noofdays = value;
}


