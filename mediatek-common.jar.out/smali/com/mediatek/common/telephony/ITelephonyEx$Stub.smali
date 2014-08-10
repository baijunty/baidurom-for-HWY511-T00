.class public abstract Lcom/mediatek/common/telephony/ITelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/telephony/ITelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/telephony/ITelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.telephony.ITelephonyEx"

.field static final TRANSACTION_getAdnStorageInfo:I = 0x4

.field static final TRANSACTION_getScAddressGemini:I = 0x8

.field static final TRANSACTION_getSmsDefaultSim:I = 0x7

.field static final TRANSACTION_isPhbReady:I = 0x5

.field static final TRANSACTION_isPhbReadyExt:I = 0x6

.field static final TRANSACTION_queryNetworkLock:I = 0x1

.field static final TRANSACTION_setNetworkLockEnabled:I = 0x3

.field static final TRANSACTION_setScAddressGemini:I = 0x9

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyEx;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/mediatek/common/telephony/ITelephonyEx$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 49
    :sswitch_0
    const-string v5, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v7, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v4

    .line 60
    .local v4, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v4, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->supplyNetworkDepersonalization(Ljava/lang/String;I)I

    move-result v4

    .line 78
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_3
    const-string v5, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->setNetworkLockEnabled(Ljava/lang/String;III)I

    move-result v4

    .line 94
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_4
    const-string v5, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v4

    .line 104
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 110
    .end local v0           #_arg0:I
    .end local v4           #_result:[I
    :sswitch_5
    const-string v7, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->isPhbReady()Z

    move-result v4

    .line 112
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v4           #_result:Z
    :sswitch_6
    const-string v7, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->isPhbReadyExt(I)Z

    move-result v4

    .line 122
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_7
    const-string v5, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->getSmsDefaultSim()I

    move-result v4

    .line 130
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v4           #_result:I
    :sswitch_8
    const-string v5, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v5, "com.mediatek.common.telephony.ITelephonyEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->setScAddressGemini(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method