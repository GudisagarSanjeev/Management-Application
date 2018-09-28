#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Tmodel.h"
#include "PeopleModel.h"
#include "AccountModel.h"
#include "PaymentModel.h"
#include "DataBaseInteractions.h"
#include "EmployeeModel.h"
#include "LeaveModel.h"
#include "LeaveModelFilter.h"
#include "PaymentProxyModel.h"

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QQmlContext *context=engine.rootContext();

    //Object creation
    PeopleModel *model=new PeopleModel;
    Tmodel *tmodel=new Tmodel;
    AccountModel *acc=new AccountModel;
    EmployeeModel *emp=new EmployeeModel;
    LeaveModel *leave=new LeaveModel;
    PaymentModel *pay=new PaymentModel;
    LeaveModelFilter *filter=new LeaveModelFilter;
    PaymentProxyModel *payproxy=new PaymentProxyModel;

    static DataBaseInteractions *dbb=NULL;
     dbb=DataBaseInteractions::Dbsingleton();

//    DataBaseInteractions dbb;

    //retrieving data from db and storing in model

    QList<QStringList> pinfo=dbb->viewPaymentdetailsAtStart();
    for(int i=0; i<pinfo.size(); i++){
        pay->addPayment(pinfo.at(i).at(0),pinfo.at(i).at(1),pinfo.at(i).at(2),pinfo.at(i).at(3),pinfo.at(i).at(4),pinfo.at(i).at(5),pinfo.at(i).at(6),pinfo.at(i).at(7),pinfo.at(i).at(8),pinfo.at(i).at(9),pinfo.at(i).at(10),pinfo.at(i).at(11),pinfo.at(i).at(12),false);
    }

    QList<QStringList> Linfo=dbb->viewLeavedetails();
    for(int i=0; i<Linfo.size(); i++){
        leave->addLeave(Linfo.at(i).at(0),Linfo.at(i).at(1),Linfo.at(i).at(2),Linfo.at(i).at(3),Linfo.at(i).at(4),Linfo.at(i).at(5),false);
    }

    QList<QStringList> inf=dbb->viewemployeedetails();
    for(int i=0; i<inf.size(); i++){
        emp->addemployee(inf.at(i).at(0),inf.at(i).at(1),inf.at(i).at(2),inf.at(i).at(3),inf.at(i).at(4),inf.at(i).at(5),inf.at(i).at(6),inf.at(i).at(7),inf.at(i).at(8),inf.at(i).at(9),inf.at(i).at(10),inf.at(i).at(11),inf.at(i).at(12),inf.at(i).at(13),false);
    }

    QList<QVariantList> infoo=dbb->viewinvoicedata();
    for(int i=0; i<infoo.size(); i++){
        qDebug()<<"Status:"<<infoo.at(i)<<endl;
        acc->addinvoice(infoo.at(i).at(0).toString(),infoo.at(i).at(1).toString(),infoo.at(i).at(2).toString(),infoo.at(i).at(3).toString(),infoo.at(i).at(4).toString(),infoo.at(i).at(5).toString(),infoo.at(i).at(6).toString(),infoo.at(i).at(7).toString(),infoo.at(i).at(8).toString(),infoo.at(i).at(9).toString(),infoo.at(i).at(10).toString(),infoo.at(i).at(11).toString(),infoo.at(i).at(12).toString(),false,infoo.at(i).at(12).toBool());
    }

    QList<QStringList> infop=dbb->viewInvoiceproxydata();
    for(int i=0; i<infop.size(); i++){
        payproxy->addInvoiceProxy(infop.at(i).at(0),infop.at(i).at(1),infop.at(i).at(2),infop.at(i).at(3),infop.at(i).at(4),infop.at(i).at(5),infop.at(i).at(6),infop.at(i).at(7),infop.at(i).at(8),infop.at(i).at(9),infop.at(i).at(10),infop.at(i).at(11),infop.at(i).at(12),false);
    }

    //  QList<QStringList> pinfoo=dbb.viewPaymentdetails();
    //    for(int i=0; i<pinfoo.size(); i++){
    //        acc->addinvoice(pinfoo.at(i).at(0),pinfoo.at(i).at(1),pinfoo.at(i).at(2),pinfoo.at(i).at(3),pinfoo.at(i).at(4),pinfoo.at(i).at(5),pinfoo.at(i).at(6),pinfoo.at(i).at(7),pinfoo.at(i).at(8),false);
    //    }

    QList<QStringList> info=dbb->viewemployeedata();
    for(int i=0;i<info.size();i++){
        model->addmanagement(info.at(i).at(0),info.at(i).at(1),info.at(i).at(2),info.at(i).at(3),info.at(i).at(4),info.at(i).at(5),info.at(i).at(6),info.at(i).at(7),info.at(i).at(8),info.at(i).at(9),false);
    }

    QList<QStringList> tinfo=dbb->viewtimedata();
    for(int i=0;i<tinfo.size();i++){

        tmodel->addtime(tinfo.at(i).at(0),tinfo.at(i).at(1),tinfo.at(i).at(2),tinfo.at(i).at(3),tinfo.at(i).at(4),tinfo.at(i).at(5),tinfo.at(i).at(6),tinfo.at(i).at(7),tinfo.at(i).at(8),tinfo.at(i).at(9),tinfo.at(i).at(10),false);
    }

    //registering the classes
    context->setContextProperty("mod",acc);
    context->setContextProperty("emp",emp);
    context->setContextProperty("modell",model);
    context->setContextProperty("tmodell",tmodel);
    context->setContextProperty("leavemodel",leave);
    context->setContextProperty("pay",pay);
    context->setContextProperty("filter",filter);
    context->setContextProperty("payproxy",payproxy);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
