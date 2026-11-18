.class public Lcom/cbinnovations/androideraser/SubCheckActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SubCheckActivity.java"


# static fields
.field public static final ITEM_PREMIUM_DEV_SUPPORT:Ljava/lang/String; = "com.cbinnovations.androideraser.premium.support"

.field public static final ITEM_SKU_LIFETIME:Ljava/lang/String; = "com.cbinnovations.androideraser.premium"

.field public static final NON_PREMIUM_BYTES:J = 0x63be150L

.field private static final acknowledgePurchaseResponseListener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# instance fields
.field public tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;


# direct methods
.method static bridge synthetic -$$Nest$smcheckSubs(Landroid/content/Context;Lcom/android/billingclient/api/BillingClient;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cbinnovations/androideraser/SubCheckActivity;->checkSubs(Landroid/content/Context;Lcom/android/billingclient/api/BillingClient;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lcom/cbinnovations/androideraser/SubCheckActivity$2;

    invoke-direct {v0}, Lcom/cbinnovations/androideraser/SubCheckActivity$2;-><init>()V

    sput-object v0, Lcom/cbinnovations/androideraser/SubCheckActivity;->acknowledgePurchaseResponseListener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static canDelete(Landroid/content/Context;J)Lcom/cbinnovations/androideraser/Limit$Pair;
    .locals 20

    move-wide/from16 v0, p1

    .line 55
    const-string v2, " to much"

    const-string v3, "cb_limit_object"

    .line 0
    const-string v4, "New Amount "

    const-string v5, "Created with "

    .line 55
    new-instance v6, Lcom/cbinnovations/androideraser/utils/TinyDB;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v7, Lcom/cbinnovations/androideraser/Limit$Pair;

    invoke-direct {v7}, Lcom/cbinnovations/androideraser/Limit$Pair;-><init>()V

    .line 58
    const-string v8, "cb_is_premium"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    if-eqz v8, :cond_0

    .line 59
    iput-wide v11, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    .line 60
    iput-boolean v10, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    return-object v7

    .line 65
    :cond_0
    :try_start_0
    const-class v8, Lcom/cbinnovations/androideraser/Limit;

    invoke-virtual {v6, v3, v8}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cbinnovations/androideraser/Limit;

    .line 66
    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/Limit;->getDate()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v16, 0x63be150

    :try_start_1
    invoke-static {}, Lcom/cbinnovations/androideraser/Limit;->dateFormat()Ljava/text/DateFormat;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 67
    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/Limit;->getAmount()J

    move-result-wide v13

    cmp-long v15, v13, v16

    if-lez v15, :cond_1

    .line 68
    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/Limit;->getAmount()J

    move-result-wide v13

    iput-wide v13, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    .line 69
    iput-boolean v9, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    return-object v7

    .line 71
    :cond_1
    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/Limit;->getAmount()J

    move-result-wide v13

    add-long/2addr v13, v0

    cmp-long v15, v13, v16

    if-lez v15, :cond_2

    .line 72
    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/Limit;->getAmount()J

    move-result-wide v13

    iput-wide v13, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    .line 73
    iput-boolean v9, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    .line 74
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/Limit;->getAmount()J

    move-result-wide v14

    add-long/2addr v14, v0

    invoke-static {v14, v15}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v7

    .line 77
    :cond_2
    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/Limit;->getAmount()J

    move-result-wide v13

    iput-wide v13, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    .line 78
    iput-boolean v10, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/cbinnovations/androideraser/Limit;->increase(Ljava/lang/Long;)V

    .line 80
    invoke-virtual {v6, v3, v8}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/Limit;->getAmount()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v7

    :cond_3
    cmp-long v4, v0, v16

    if-lez v4, :cond_4

    .line 86
    iput-wide v11, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    .line 87
    iput-boolean v9, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    .line 88
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v7

    .line 91
    :cond_4
    iput-wide v11, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    .line 92
    iput-boolean v10, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    .line 93
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    new-instance v4, Lcom/cbinnovations/androideraser/Limit;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-direct {v4, v8, v0, v1}, Lcom/cbinnovations/androideraser/Limit;-><init>(Ljava/util/Date;J)V

    invoke-virtual {v6, v3, v4}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v7

    :catch_0
    const-wide/32 v16, 0x63be150

    :catch_1
    nop

    cmp-long v4, v0, v16

    if-lez v4, :cond_5

    .line 100
    iput-wide v11, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    .line 101
    iput-boolean v9, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    .line 102
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v7

    .line 105
    :cond_5
    iput-wide v11, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    .line 106
    iput-boolean v10, v7, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    .line 107
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    new-instance v2, Lcom/cbinnovations/androideraser/Limit;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {v2, v4, v0, v1}, Lcom/cbinnovations/androideraser/Limit;-><init>(Ljava/util/Date;J)V

    invoke-virtual {v6, v3, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public static checkProfessional(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 115
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enableAutoServiceReconnection()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/cbinnovations/androideraser/SubCheckActivity$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/cbinnovations/androideraser/SubCheckActivity$1;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/BillingClient;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method private static checkSubs(Landroid/content/Context;Lcom/android/billingclient/api/BillingClient;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 153
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v1, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Lcom/android/billingclient/api/BillingClient;)V

    .line 179
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    const-string v3, "inapp"

    .line 180
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v2

    new-instance v3, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0, p0, p2}, Lcom/cbinnovations/androideraser/SubCheckActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/cbinnovations/androideraser/utils/TinyDB;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method static synthetic lambda$checkProfessional$0(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$checkSubs$0(Ljava/util/List;Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    .line 159
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_1

    .line 160
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/Purchase;

    .line 161
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p3

    .line 167
    invoke-virtual {p3}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p3

    .line 169
    sget-object v0, Lcom/cbinnovations/androideraser/SubCheckActivity;->acknowledgePurchaseResponseListener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-virtual {p1, p3, v0}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$checkSubs$1(Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/cbinnovations/androideraser/utils/TinyDB;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 184
    invoke-interface {p0, p4, p5}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 186
    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    if-nez p0, :cond_2

    .line 188
    const-string p0, "com.cbinnovations.androideraser.premium"

    .line 189
    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.cbinnovations.androideraser.premium.support"

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 188
    :goto_1
    const-string p2, "cb_is_premium"

    invoke-virtual {p1, p2, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const/4 p0, 0x0

    .line 192
    invoke-interface {p3, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance p1, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {p1, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/SubCheckActivity;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    .line 43
    const-string v0, "cb_language"

    const-string v1, "en"

    invoke-virtual {p1, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/utils/Language;->load(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
