#include "EmployeeModel.h"
static DataBaseInteractions *db=NULL;
EmployeeModel::EmployeeModel()
{
    db=DataBaseInteractions::Dbsingleton();
}

EmployeeModel::~EmployeeModel()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    delete db;
}

void EmployeeModel::deleteemployee(QString id)
{
    this->beginResetModel();
    db->deleteemployee(id);
    for(int i=0;i<employeeinfo.size();i++){
        if(employeeinfo.at(i).getEmpid()==id){
            employeeinfo.removeAt(i);
        }
    }
    this->endResetModel();
}

void EmployeeModel::updateLeaveNos(QString id,QString days)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    db->updateLeaveInfo(id,days);
    for(int i=0;i<employeeinfo.size();i++){
        if(employeeinfo.at(i).getEmpid()==id){
            EmployeeInfo *mi =  const_cast<EmployeeInfo*>(&employeeinfo.at(i));
            mi->setNoofdays(days);
        }
    }

}
void EmployeeModel::addemployee(QString empid,QString firstname, QString lastname, QString fathername, QString address1,QString address2, QString location, QString zipcode, QString state, QString email, QString phone, QString econtact, QUrl image,QString noofdays, bool check)
{
    beginInsertRows(QModelIndex(), employeeinfo.count(), employeeinfo.count());
    employeeinfo << EmployeeInfo(empid,firstname,lastname,fathername,address1,address2,location,zipcode,state,email,phone,econtact,image,noofdays);

    if(check)
        db->insertemployeedata(empid,firstname,lastname,fathername,address1,address2,location,zipcode,state,email,phone,econtact,image,noofdays);
    endInsertRows();
}

int EmployeeModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return employeeinfo.count();
}

QVariant EmployeeModel::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row()>=employeeinfo.count())
        return QVariant();

    const EmployeeInfo &info=employeeinfo[index.row()];
    if(role==EMPLOYEE_ID)
        return info.getEmpid();
    else if(role==FIRSTNAME)
        return info.getFirstname();
    else if(role==LASTNAME)
        return info.getLastname();
    else if(role==FATHERNAME)
        return info.getFathername();
    else if(role==ADDRESS1)
        return info.getAddress1();
    else if(role==ADDRESS2)
        return info.getAddress2();
    else if(role==LOCATION)
        return info.getLocation();
    else if(role==ZIPCODE)
        return info.getZipcode();
    else if(role==STATE)
        return info.getState();
    else if(role==EMAIL)
        return info.getEmail();
    else if(role==PHONE)
        return info.getPhone();
    else if(role==EMERGENCYCONTACT)
        return info.getEmergencycontact();
    else if(role==IMAGEURL)
        return info.getImage();
    else if(role==NOOFDAYSLEAVETAKEN)
        return info.getNoofdays();

    return QVariant();
}

QHash<int, QByteArray> EmployeeModel::roleNames() const
{
    QHash<int ,QByteArray> roles;
    roles[EMPLOYEE_ID]="empid";
    roles[FIRSTNAME]="firstname";
    roles[LASTNAME]="lastname";
    roles[FATHERNAME]="fathername";
    roles[ADDRESS1]="address1";
    roles[ADDRESS2]="address2";
    roles[LOCATION]="location";
    roles[ZIPCODE]="zipcode";
    roles[STATE]="statee";
    roles[EMAIL]="email";
    roles[PHONE]="phone";
    roles[EMERGENCYCONTACT]="emergencycontact";
    roles[IMAGEURL]="image";
    roles[NOOFDAYSLEAVETAKEN]="leavenos";


    return roles;
}


