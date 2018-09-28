#ifndef EMPLOYEEINFO_H
#define EMPLOYEEINFO_H
#include <QObject>
#include <QImage>
#include <QUrl>
class EmployeeInfo
{
public:
    EmployeeInfo();
    EmployeeInfo(QString,QString,QString,QString,QString,QString,QString,QString,QString,QString,QString,QString,QUrl,QString);

    QString getFirstname() const;
    void setFirstname(const QString &value);

    QString getLastname() const;
    void setLastname(const QString &value);

    QString getFathername() const;
    void setFathername(const QString &value);

    QString getLocation() const;
    void setLocation(const QString &value);

    QString getZipcode() const;
    void setZipcode(const QString &value);

    QString getState() const;
    void setState(const QString &value);

    QString getEmail() const;
    void setEmail(const QString &value);

    QString getPhone() const;
    void setPhone(const QString &value);

    QString getEmergencycontact() const;
    void setEmergencycontact(const QString &value);

    QUrl getImage() const;
    void setImage(const QUrl &value);

    QString getEmpid() const;
    void setEmpid(const QString &value);

    QString getAddress2() const;
    void setAddress2(const QString &value);

    QString getAddress1() const;
    void setAddress1(const QString &value);

    QString getNoofdays() const;
    void setNoofdays(const QString &value);

private:
    QString empid;
    QString firstname;
    QString lastname;
    QString fathername;
    QString address1;
    QString address2;
    QString location;
    QString zipcode;
    QString state;
    QString email;
    QString phone;
    QString emergencycontact;
    QUrl image;
    QString noofdays;
};

#endif // EMPLOYEEINFO_H
