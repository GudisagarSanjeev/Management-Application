#include "PaymentModel.h"
static DataBaseInteractions *db=NULL;
PaymentModel::PaymentModel()
{
    db=DataBaseInteractions::Dbsingleton();
}

PaymentModel::~PaymentModel()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    delete db;
}

void PaymentModel::invonosList(QString nos)
{
    QList<QStringList> info=db->viewPaymentdetails(nos);
    for(int i=0; i<info.size(); i++){
        addPayment(info.at(i).at(0),info.at(i).at(1),info.at(i).at(2),info.at(i).at(3),info.at(i).at(4),info.at(i).at(5),info.at(i).at(6),info.at(i).at(7),info.at(i).at(8),info.at(i).at(9),info.at(i).at(10),info.at(i).at(11),info.at(i).at(12),true);
    }
}

void PaymentModel::addPayment(QString ivno, QString date, QString amt, QString company,QString sgst, QString cgst, QString igst, QString taxRs, QString tds, QString totalamt,QString tdssale, QString tdsinvoice,QString total,bool check)
{
    beginInsertRows(QModelIndex(), paymentinfo.count(), paymentinfo.count());
    paymentinfo << InVoiceInfo(ivno, date,amt,company,sgst,cgst,igst,taxRs,tds,totalamt,tdssale,tdsinvoice,total,false);
    if(check)
        db->insertpPaymentdata(ivno,date,amt,company, sgst, cgst, igst,taxRs, tds,totalamt,tdssale,tdsinvoice,total);
    endInsertRows();
}

int PaymentModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return paymentinfo.count();
}

QVariant PaymentModel::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row()>=paymentinfo.count())
        return QVariant();

    const InVoiceInfo &info=paymentinfo[index.row()];
    if(role==IVNO)
        return info.getIvno();
    else if(role==DATE)
        return info.getDate();
    else if(role==AMOUNT)
        return info.getAmt();
    else if(role==COMPANY)
        return info.getCompany();
    else if(role==SGST)
        return info.getSgst();
    else if(role==CGST)
        return info.getCgst();
    else if(role==IGST)
        return info.getIgst();
    else if(role==TAXRS)
        return info.getTaxRs();
    else if(role==TDS)
        return info.getTds();
    else if(role==TOTALAMT)
        return info.getTotalamt();
    else if(role==TDSS)
        return info.getTdssale();
    else if(role==TDSI)
        return info.getTdsinvoice();
    else if(role==TOTAL)
        return info.getTotal();

    return QVariant();
}

QHash<int, QByteArray> PaymentModel::roleNames() const
{
    QHash<int ,QByteArray> roles;
    roles[IVNO]="ivno";
    roles[DATE]="date";
    roles[AMOUNT]="amt";
    roles[COMPANY]="company";
    roles[SGST]="sgst";
    roles[CGST]="cgst";
    roles[IGST]="igst";
    roles[TAXRS]="taxrs";
    roles[TDS]="tds";
    roles[TOTALAMT]="totalamt";
    roles[TDSS]="tdssale";
    roles[TDSI]="tdsinvoice";
    roles[TOTAL]="total";



    return roles;
}
