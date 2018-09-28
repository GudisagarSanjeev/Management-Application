#include "AccountModel.h"
static DataBaseInteractions *db=NULL;
AccountModel::AccountModel()
{
    db=DataBaseInteractions::Dbsingleton();
}

AccountModel::~AccountModel()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    delete db;
}

void AccountModel::updateStatus(QString val)
{
    //db->updatelot(res,l);
    db->updateStatusDb(val,true);
    for(int i=0;i<invoiceinfo.size();i++){
        if(invoiceinfo.at(i).getIvno()==val){
            InVoiceInfo *mi =  const_cast<InVoiceInfo*>(&invoiceinfo.at(i));
            mi->setStatus(true);
        }
    }
}

void AccountModel::addinvoice(QString ivno, QString date, QString amt,QString company, QString sgst, QString cgst, QString igst, QString taxRs, QString tds, QString totalamt,QString tdssale,QString tdsinvoice,QString total,bool check,bool status)
{
    beginInsertRows(QModelIndex(), invoiceinfo.count(), invoiceinfo.count());
    invoiceinfo << InVoiceInfo(ivno, date,amt,company,sgst,cgst,igst,taxRs,tds,totalamt,tdssale,tdsinvoice,total,status);
    if(check){
        db->insertinvoicedata(ivno,date,amt,company, sgst, cgst, igst,taxRs, tds,totalamt,tdssale,tdsinvoice,total,status);
        endInsertRows();
    }
}

int AccountModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return invoiceinfo.count();
}

QVariant AccountModel::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row()>=invoiceinfo.count())
        return QVariant();

    const InVoiceInfo &info=invoiceinfo[index.row()];
    if(role==INVOICE_NO)
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
    else if(role==TDSI)
        return info.getTdsinvoice();
    else if(role==TDSS)
        return info.getTdssale();
    else if(role==TOTAL)
        return info.getTotal();
    else if(role==STATUS)
        return info.getStatus();

    return QVariant();
}

QHash<int, QByteArray> AccountModel::roleNames() const
{
    QHash<int ,QByteArray> roles;
    roles[INVOICE_NO]="ivno";
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
    roles[STATUS]="status";

    return roles;
}
