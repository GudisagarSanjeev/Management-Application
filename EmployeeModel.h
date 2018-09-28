#ifndef EMPLOYEEMODEL_H
#define EMPLOYEEMODEL_H
#include <QAbstractListModel>
#include <QDebug>
#include "EmployeeInfo.h"
#include "DataBaseInteractions.h"
#include <QImage>

class EmployeeModel: public QAbstractListModel
{
    Q_OBJECT
public:
    EmployeeModel();
    ~EmployeeModel();
    enum{EMPLOYEE_ID,FIRSTNAME,LASTNAME,FATHERNAME,ADDRESS1,ADDRESS2,LOCATION,ZIPCODE,STATE,EMAIL,PHONE,EMERGENCYCONTACT,IMAGEURL,NOOFDAYSLEAVETAKEN};

    Q_INVOKABLE void deleteemployee(QString id);
    Q_INVOKABLE void updateLeaveNos(QString,QString);
    Q_INVOKABLE void addemployee(QString empid, QString firstname, QString lastname, QString fathername, QString address1, QString address2, QString location, QString zipcode, QString state, QString email, QString phone, QString econtact, QUrl image, QString noofdays, bool check);
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
protected:
    QHash<int,QByteArray> roleNames() const override;
private:
    QList<EmployeeInfo> employeeinfo;
};

#endif // TMODEL_H
