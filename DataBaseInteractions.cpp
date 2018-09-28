#include "DataBaseInteractions.h"
DataBaseInteractions *DataBaseInteractions::databaseObj=NULL;

DataBaseInteractions::DataBaseInteractions(QObject *parent) : QObject(parent)
{
    qDebug()<<Q_FUNC_INFO<<endl;

    QSqlDatabase db = QSqlDatabase::addDatabase( "QSQLITE" );
    db.setDatabaseName( "./ManagementDB.db" );
    db.open();
    QSqlQuery query;

    //query.exec("PRAGMA foreign_keys = ON;");
    query.exec("Create table if not exists Employeedetails(Empid varchar(30) primary key,FirstName varchar(30), LastName varchar(30),FatherName varchar(30),Address1 varchar(30),Address2 varchar(30),Location varchar(30),ZipCode varchar(30),State varchar(30), Email varchar(30),Phone varchar(30),EmergencyContact varchar(30),Image BLOB,NoOfLeaves varchar(4))");
    query.exec("Create table if not exists EmpWorkingdetails(Empid varchar(30),ResourceName varchar(30), Company varchar(30),Reportingmngr varchar(30),PMO varchar(30),PONum varchar(30),PoDate varchar(30),POendto varchar(30), Lots varchar(30),Perlot varchar(30))");
    query.exec("Create table if not exists Timedetails(ResourceName varchar(30) , Company varchar(30),Reportingmngr varchar(30),PMO varchar(30),PONum varchar(30),Lots varchar(30),StartDate varchar(30), EndDate varchar(30),LotsUsage varchar(30),RemainingLots varchar(30),RemainingLotsAmt varchar(30))");
    query.exec("Create table if not exists Invoice(InvoiceNumber varchar(30) primary key, Date varchar(30),Amount QString,Company varchar(30),SGSTAmt varchar(30),CGSTAmt varchar(30),IGSTAmt varchar(30),TaxRs varchar(30), TDS varchar(30),TotalRs varchar(30),TDSSale varchar(30),TDSInvoice varchar(30),TOTAL varchar(30),Status Boolean)");
    query.exec("Create table if not exists InvoiceProxy(InvoiceNumber varchar(30) primary key, Date varchar(30),Amount QString,Company varchar(30),SGSTAmt varchar(30),CGSTAmt varchar(30),IGSTAmt varchar(30),TaxRs varchar(30), TDS varchar(30),TotalRs varchar(30),TDSSale varchar(30),TDSInvoice varchar(30),TOTAL varchar(30))");
    query.exec("Create table if not exists Payment(InvoiceNumber varchar(30), Date varchar(30),Amount QString,Company varchar(30),SGSTAmt varchar(30),CGSTAmt varchar(30),IGSTAmt varchar(30),TaxRs varchar(30), TDS varchar(30),TotalRs varchar(30),TDSSale varchar(30),TDSInvoice varchar(30),TOTAL varchar(30))");
    query.exec("Create table if not exists Leavedetails(FirstName varchar(30), NoofDays varchar(30),StartDay varchar(30),EndDay varchar(30),Remark varchar(100),Empid varchar(30))");
    qDebug()<< query.lastError();
}

DataBaseInteractions::~DataBaseInteractions()
{
    qDebug()<<Q_FUNC_INFO<<endl;
}

DataBaseInteractions *DataBaseInteractions::Dbsingleton()
{
    qDebug()<<Q_FUNC_INFO<<endl;

    if(databaseObj==NULL){
        databaseObj=new DataBaseInteractions;
    }else{
        return databaseObj;
    }
    return 0;
}

void DataBaseInteractions::insertleavedata(QString name, QString noofdays, QString startday, QString endday, QString remark,QString empid)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery query;

    query.prepare("insert into Leavedetails values (:a, :b, :c,:d,:e,:f)");
    query.bindValue(":a",name);
    query.bindValue(":b",noofdays);
    query.bindValue(":c",startday);
    query.bindValue(":d",endday);
    query.bindValue(":e",remark);
    query.bindValue(":f",empid);
    query.exec();
}

void DataBaseInteractions::insertinvoicedata(QString ivno,QString date,QString amt,QString company,QString sgst,QString cgst,QString igst,QString taxrs,QString tds,QString totalamt,QString tdssale,QString tdsinvoice,QString total,bool status)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery query;

    query.prepare("insert into Invoice values (:a, :b, :c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n)");
    query.bindValue(":a",ivno);
    query.bindValue(":b",date);
    query.bindValue(":c",amt);
    query.bindValue(":d",company);
    query.bindValue(":e",sgst);
    query.bindValue(":f",cgst);
    query.bindValue(":g",igst);
    query.bindValue(":h",taxrs);
    query.bindValue(":i",tds);
    query.bindValue(":j",totalamt);
    query.bindValue(":k",tdssale);
    query.bindValue(":l",tdsinvoice);
    query.bindValue(":m",total);
    query.bindValue(":n",status);

    query.exec();
}

void DataBaseInteractions::insertinvoiceproxydata(QString ivno, QString date, QString amt,QString company, QString sgst, QString cgst, QString igst, QString taxrs, QString tds, QString totalamt,QString tdssale,QString tdsinvoice,QString total)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery query;

    qDebug()<<ivno<<date<<amt<<company<<sgst<<cgst<<igst<<taxrs<<tds<<totalamt<<tdssale<<tdsinvoice<<endl;

    query.prepare("insert into InvoiceProxy values (:a, :b, :c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m)");
    query.bindValue(":a",ivno);
    query.bindValue(":b",date);
    query.bindValue(":c",amt);
    query.bindValue(":d",company);
    query.bindValue(":e",sgst);
    query.bindValue(":f",cgst);
    query.bindValue(":g",igst);
    query.bindValue(":h",taxrs);
    query.bindValue(":i",tds);
    query.bindValue(":j",totalamt);
    query.bindValue(":k",tdssale);
    query.bindValue(":l",tdsinvoice);
     query.bindValue(":m",total);
    query.exec();
}

void DataBaseInteractions::insertpPaymentdata(QString ivno, QString date, QString amt,QString company,QString sgst, QString cgst, QString igst, QString taxrs, QString tds, QString totalamt,QString tdssale,QString tdsinvoice,QString total)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery query;

    query.prepare("insert into Payment values (:a, :b, :c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m)");
    query.bindValue(":a",ivno);
    query.bindValue(":b",date);
    query.bindValue(":c",amt);
    query.bindValue(":d",company);
    query.bindValue(":e",sgst);
    query.bindValue(":f",cgst);
    query.bindValue(":g",igst);
    query.bindValue(":h",taxrs);
    query.bindValue(":i",tds);
    query.bindValue(":j",totalamt);
    query.bindValue(":k",tdssale);
    query.bindValue(":l",tdsinvoice);
    query.bindValue(":m",total);

    query.exec();
}

QList<QVariantList> DataBaseInteractions::viewinvoicedata()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    QList<QVariantList> result;
    qry.prepare("Select * from Invoice order by InvoiceNumber ASC ");
    qry.exec();


    while(qry.next()){

        QVariantList list;

        list.append(qry.value(0).toString());
        list.append(qry.value(1).toString());
        list.append(qry.value(2).toString());
        list.append(qry.value(3).toString());
        list.append(qry.value(4).toString());
        list.append(qry.value(5).toString());
        list.append(qry.value(6).toString());
        list.append(qry.value(7).toString());
        list.append(qry.value(8).toString());
        list.append(qry.value(9).toString());
        list.append(qry.value(10).toString());
        list.append(qry.value(11).toString());
        list.append(qry.value(12).toBool());
        list.append(qry.value(13).toBool());

        result.append(list);
    }
    return result;
}

QList<QStringList> DataBaseInteractions::viewInvoiceproxydata()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    QList<QStringList> result;
    qry.prepare("Select * from InvoiceProxy");
    qry.exec();


    while(qry.next()){

        QStringList list;
        list.append(qry.value(0).toString());
        list.append(qry.value(1).toString());
        list.append(qry.value(2).toString());
        list.append(qry.value(3).toString());
        list.append(qry.value(4).toString());
        list.append(qry.value(5).toString());
        list.append(qry.value(6).toString());
        list.append(qry.value(7).toString());
        list.append(qry.value(8).toString());
        list.append(qry.value(9).toString());
        list.append(qry.value(10).toString());
        list.append(qry.value(11).toString());
        list.append(qry.value(12).toString());

        result.append(list);
    }
    qDebug()<<"End"<<endl;
    return result;
}

QList<QStringList> DataBaseInteractions::viewemployeedetails()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    QList<QStringList> result;
    qry.prepare("Select * from Employeedetails order by Empid ASC");
    qry.exec();


    while(qry.next()){

        QStringList list;

        for(int i=0;i<=13;i++){
            list.append(qry.value(i).toString());
        }
        result.append(list);
    }
    return result;
}

QList<QStringList> DataBaseInteractions::viewLeavedetails()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    QList<QStringList> result;
    qry.prepare("Select * from Leavedetails");
    qry.exec();

    while(qry.next()){

        QStringList list;
        for(int i=0;i<6;i++){
            list.append(qry.value(i).toString());
        }
        result.append(list);
    }
    return result;
}

QList<QStringList> DataBaseInteractions::viewLeavedetailsFilters(QString id)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;

    QList<QStringList> result;
    qry.prepare("Select * from Leavedetails where Empid=:a ");
    qry.bindValue(":a",id);
    qry.exec();

    while(qry.next()){

        QStringList list;

        list.append(qry.value(0).toString());
        list.append(qry.value(2).toString());
        list.append(qry.value(3).toString());
        list.append(qry.value(4).toString());
        list.append(qry.value(5).toString());

        result.append(list);
    }
    return result;
}

QList<QStringList> DataBaseInteractions::viewPaymentdetails(QString str)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    QList<QStringList> result;
    qry.prepare("Select * from Invoice where InvoiceNumber=:invoicenos");
    qry.bindValue(":invoicenos",str);
    qry.exec();

    while(qry.next()){

        QStringList list;
        for(int i=0;i<13;i++){
            list.append(qry.value(i).toString());
        }
        result.append(list);
    }
    return result;
}

QList<QStringList> DataBaseInteractions::viewPaymentdetailsAtStart()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    QList<QStringList> result;
    qry.prepare("Select * from Payment order by InvoiceNumber ASC");
    qry.exec();

    while(qry.next()){

        QStringList list;
        for(int i=0;i<13;i++){
            list.append(qry.value(i).toString());
        }
        result.append(list);
    }
    qDebug()<<Q_FUNC_INFO<<"end"<<endl;
    return result;
}

void DataBaseInteractions::insertmanagementdata(QString empid,QString resourcename,QString company,QString reportingmngr,QString pmo,QString ponumber,QString podate,QString poendto,QString lots,QString perlot)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery query;

    query.prepare("insert into EmpWorkingdetails values (:a, :b, :c,:d,:e,:f,:g,:h,:i,:j)");
    query.bindValue(":a",empid);
    query.bindValue(":b",resourcename);
    query.bindValue(":c",company);
    query.bindValue(":d",reportingmngr);
    query.bindValue(":e",pmo);
    query.bindValue(":f",ponumber);
    query.bindValue(":g",podate);
    query.bindValue(":h",poendto);
    query.bindValue(":i",lots);
    query.bindValue(":j",perlot);

    query.exec();
}

void DataBaseInteractions::inserttimedata(QString resourcename, QString company, QString reportingmngr, QString pmo, QString ponumber, QString lots, QString startdate, QString enddate, QString clotsusage, QString rem,QString rempoamt)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery query;

    query.prepare("insert into  Timedetails values (:a, :b, :c,:d,:e,:f,:g,:h,:i,:j,:k)");
    query.bindValue(":a",resourcename);
    query.bindValue(":b",company);
    query.bindValue(":c",reportingmngr);
    query.bindValue(":d",pmo);
    query.bindValue(":e",ponumber);
    query.bindValue(":f",lots);
    query.bindValue(":g",startdate);
    query.bindValue(":h",enddate);
    query.bindValue(":i",clotsusage);
    query.bindValue(":j",rem);
    query.bindValue(":k",rempoamt);
    query.exec();
}

void DataBaseInteractions::insertemployeedata(QString empid, QString firstname, QString lastname, QString fathername, QString address1, QString address2, QString location, QString zipcode, QString state, QString email, QString phone, QString econtact, QUrl image,QString noofdays)
{
    QSqlQuery query;
    qDebug()<<Q_FUNC_INFO<<endl;
    query.prepare("insert into  Employeedetails values (:a, :b, :c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n)");
    query.bindValue(":a",empid);
    query.bindValue(":b",firstname);
    query.bindValue(":c",lastname);
    query.bindValue(":d",fathername);
    query.bindValue(":e",address1);
    query.bindValue(":f",address2);
    query.bindValue(":g",location);
    query.bindValue(":h",zipcode);
    query.bindValue(":i",state);
    query.bindValue(":j",email);
    query.bindValue(":k",phone);
    query.bindValue(":l",econtact);
    query.bindValue(":m",image);
    query.bindValue(":n",noofdays);
    query.exec();
}

void DataBaseInteractions::deleteemployee(QString id)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry1;
    QSqlQuery qry2;
    QSqlQuery qry3;
    QSqlQuery qry4;
    qry1.prepare("delete from Employeedetails  where Empid=:eid");
    qry2.prepare("delete from Leavedetails  where Empid=:eid");
    qry3.prepare("delete from Timedetails where ResourceName=:eid");
    qry4.prepare("delete from EmpWorkingdetails  where Empid=:eid");
    qry1.bindValue(":eid",id);
    qry2.bindValue(":eid",id);
    qry3.bindValue(":eid",id);
    qry4.bindValue(":eid",id);
    qry1.exec();
    qry2.exec();
    qry3.exec();
    qry4.exec();
}

void DataBaseInteractions::deleteemployeeOnly(QString id)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry1;
    QSqlQuery qry2;

    qry1.prepare("delete from Timedetails where ResourceName=:eid");
    qry2.prepare("delete from EmpWorkingdetails  where Empid=:eid");

    qry1.bindValue(":eid",id);
    qry2.bindValue(":eid",id);
    qry1.exec();
    qry2.exec();
}

void DataBaseInteractions::deleteProxyInvoicenos(QString id)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry1;

    qry1.prepare("delete from InvoiceProxy where InvoiceNumber=:eid");
    qry1.bindValue(":eid",id);
    qry1.exec();
}

void DataBaseInteractions::addPayment(QString nos)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    qry.prepare("delete from Invoice  where InvoiceNumber=:nos");
    qry.bindValue(":nos",nos);
    qry.exec();
}

void DataBaseInteractions::updatelot(QString res,QString lotss)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    qry.prepare("update EmpWorkingdetails  set Lots=:lot where Empid=:res");
    qry.bindValue(":res",res);
    qry.bindValue(":lot",lotss);
    qry.exec();
}

void DataBaseInteractions::updateLeaveInfo(QString id, QString days)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;

    qry.prepare("Update Employeedetails set NoOfLeaves=:udays where Empid=:id");
    qry.bindValue(":id",id);
    qry.bindValue(":udays",days);
    qry.exec();
}

void DataBaseInteractions::updateStatusDb(QString val,bool s)
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;

    qry.prepare("Update Invoice set Status=:s where InvoiceNumber=:val");
    qry.bindValue(":val",val);
    qry.bindValue(":s",s);
    qry.exec();
}

QList<QStringList> DataBaseInteractions::viewtimedata()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    QList<QStringList> result;
    qry.prepare("Select * from Timedetails");
    qry.exec();


    while(qry.next()){

        QStringList list;

        for(int i=0;i<11;i++){
            list.append(qry.value(i).toString());
        }
        result.append(list);

    }
    return result;
}

QList<QStringList> DataBaseInteractions::viewemployeedata()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery qry;
    QList<QStringList> result;
    qry.prepare("Select * from EmpWorkingdetails");
    qry.exec();


    while(qry.next()){

        QStringList list;
        for(int i=0;i<10;i++){
            list.append(qry.value(i).toString());
        }
        result.append(list);
    }
    return result;
}
