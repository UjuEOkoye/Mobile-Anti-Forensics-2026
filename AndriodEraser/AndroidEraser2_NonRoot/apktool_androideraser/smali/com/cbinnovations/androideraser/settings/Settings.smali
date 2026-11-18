.class public Lcom/cbinnovations/androideraser/settings/Settings;
.super Lcom/cbinnovations/androideraser/SubCheckActivity;
.source "Settings.java"


# static fields
.field public static final SAVEKEY_ASK_DEFAULT_METHOD:Ljava/lang/String; = "cb_ask_default_method"

.field public static final SAVEKEY_DEFAULT_METHOD:Ljava/lang/String; = "cb_default_method"

.field public static final SAVEKEY_DIRECT_EXPLORER:Ljava/lang/String; = "cb_direct_explorer"

.field public static final SAVEKEY_DIRECT_SCAN:Ljava/lang/String; = "cb_direct_scan"

.field public static final SAVEKEY_GENERATE_REPORT:Ljava/lang/String; = "generate_report"

.field public static final SAVEKEY_HIDDEN_FILES:Ljava/lang/String; = "cb_hidden_files"

.field public static final SAVEKEY_HINT_SHREDDING_SLOW_DEVICE:Ljava/lang/String; = "cb_hint_shred_slow_device"

.field public static final SAVEKEY_IS_PREMIUM:Ljava/lang/String; = "cb_is_premium"

.field public static final SAVEKEY_IS_PREMIUM_UPGRADE:Ljava/lang/String; = "cb_is_premium_upgrade"

.field public static final SAVEKEY_LANGUAGE:Ljava/lang/String; = "cb_language"

.field public static final SAVEKEY_LIMIT_OBJECT:Ljava/lang/String; = "cb_limit_object"

.field public static final SAVEKEY_SORT:Ljava/lang/String; = "cb_sort"


# instance fields
.field private final acknowledgePurchaseResponseListener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private mDefaultMethodName:Landroid/widget/TextView;

.field private mExplorerSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mGenerateReportsSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mHiddenFilesSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mLPrice:Landroid/widget/TextView;

.field private mScanSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method static bridge synthetic -$$Nest$fgetacknowledgePurchaseResponseListener(Lcom/cbinnovations/androideraser/settings/Settings;)Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->acknowledgePurchaseResponseListener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbillingClient(Lcom/cbinnovations/androideraser/settings/Settings;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfeedback(Lcom/cbinnovations/androideraser/settings/Settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->feedback(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monError(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->onError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monError(Lcom/cbinnovations/androideraser/settings/Settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->onError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowItems(Lcom/cbinnovations/androideraser/settings/Settings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->showItems(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleDirectExplorer(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->toggleDirectExplorer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleDirectScan(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->toggleDirectScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleGenerateReports(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->toggleGenerateReports()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleHiddenFiles(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->toggleHiddenFiles()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->update()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/SubCheckActivity;-><init>()V

    .line 465
    new-instance v0, Lcom/cbinnovations/androideraser/settings/Settings$18;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/settings/Settings$18;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->acknowledgePurchaseResponseListener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    return-void
.end method

.method private deInitGoogle()V
    .locals 1

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private dialogFeedback()V
    .locals 4

    .line 366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0044

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$17;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$17;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    const v2, 0x7f110097

    .line 368
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$16;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$16;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    const v2, 0x7f110131

    .line 373
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private disableSwitch(Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 1

    .line 351
    new-instance v0, Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private feedback(Ljava/lang/String;)V
    .locals 2

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    const-string v1, "mailto:support@cb-innovations.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 413
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110066

    invoke-virtual {p0, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const p1, 0x7f110117

    .line 418
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static getDefaultMethod(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
    .locals 2

    .line 77
    :try_start_0
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string p0, "cb_default_method"

    const-class v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    invoke-virtual {v0, p0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDirectExplorer(Landroid/content/Context;)Z
    .locals 2

    .line 96
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string p0, "cb_direct_explorer"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getDirectScan(Landroid/content/Context;)Z
    .locals 2

    .line 84
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string p0, "cb_direct_scan"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getGenerateReports(Landroid/content/Context;)Z
    .locals 2

    .line 88
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string p0, "generate_report"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getHiddenFiles(Landroid/content/Context;)Z
    .locals 2

    .line 92
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string p0, "cb_hidden_files"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private initCommunity()V
    .locals 2

    const v0, 0x7f080129

    .line 295
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$12;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$12;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080128

    .line 300
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$13;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$13;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080140

    .line 305
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$14;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$14;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08013a

    .line 310
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$15;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$15;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initExplorer()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mHiddenFilesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$8;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$8;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mExplorerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$9;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$9;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080125

    .line 280
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$10;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$10;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08012d

    .line 286
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$11;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$11;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initGeneral()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mScanSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$2;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$2;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mGenerateReportsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$3;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$3;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080137

    .line 175
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$4;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$4;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08012a

    .line 181
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$5;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$5;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initGoogle()V
    .locals 2

    .line 472
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$19;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$19;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 514
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enableAutoServiceReconnection()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 518
    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$20;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$20;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method private initOnCreate()V
    .locals 5

    .line 107
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->initPurchase()V

    const v0, 0x7f080138

    .line 108
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mScanSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f080126

    .line 109
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mExplorerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f080124

    .line 110
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mDefaultMethodName:Landroid/widget/TextView;

    const v0, 0x7f08012e

    .line 111
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mHiddenFilesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f08012b

    .line 112
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mGenerateReportsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 114
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mScanSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->disableSwitch(Landroidx/appcompat/widget/SwitchCompat;)V

    .line 115
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mGenerateReportsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->disableSwitch(Landroidx/appcompat/widget/SwitchCompat;)V

    .line 116
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mHiddenFilesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->disableSwitch(Landroidx/appcompat/widget/SwitchCompat;)V

    .line 117
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mExplorerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->disableSwitch(Landroidx/appcompat/widget/SwitchCompat;)V

    .line 119
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->initGeneral()V

    .line 120
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->initExplorer()V

    .line 121
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->initSecurity()V

    .line 122
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->initCommunity()V

    const v0, 0x7f080136

    .line 124
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$1;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$1;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v1, "cb_is_premium"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080133

    .line 156
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f080099

    .line 159
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f11006a

    .line 160
    invoke-virtual {p0, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initPurchase()V
    .locals 2

    const v0, 0x7f080130

    .line 447
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mLPrice:Landroid/widget/TextView;

    .line 449
    invoke-static {p0}, Lcom/cbinnovations/androideraser/utils/Utility;->hasLuckypatcher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mLPrice:Landroid/widget/TextView;

    const v1, 0x7f110083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->initGoogle()V

    return-void
.end method

.method private initSecurity()V
    .locals 2

    const v0, 0x7f080132

    .line 215
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$6;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$6;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080123

    .line 224
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$7;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$7;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$disableSwitch$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onError()V
    .locals 1

    .line 592
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 3

    .line 595
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.cbinnovations.androideraser.premium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "inapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const p1, 0x7f080130

    .line 596
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 597
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v1, "cb_is_premium"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f11001e

    goto :goto_1

    :cond_2
    const v0, 0x7f110083

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    .line 598
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, 0x7f08011f

    .line 600
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    .line 607
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 609
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    .line 610
    const-string v1, ""

    .line 611
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 614
    :try_start_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 615
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 616
    :cond_2
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "subs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 617
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    .line 620
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 626
    :cond_3
    :goto_1
    const-string v4, "com.cbinnovations.androideraser.premium"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 627
    iget-object v4, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v5, "cb_is_premium"

    invoke-virtual {v4, v5, v3}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 628
    invoke-direct {p0, v2}, Lcom/cbinnovations/androideraser/settings/Settings;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v2, 0x7f080130

    .line 630
    invoke-virtual {p0, v2}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 631
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    const/high16 v3, 0x41b80000    # 23.0f

    .line 632
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f08011f

    .line 634
    invoke-virtual {p0, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda0;-><init>(Lcom/cbinnovations/androideraser/settings/Settings;Lcom/android/billingclient/api/ProductDetails;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private toggleDirectExplorer()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDirectExplorer(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "cb_direct_explorer"

    invoke-virtual {v0, v2, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private toggleDirectScan()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDirectScan(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "cb_direct_scan"

    invoke-virtual {v0, v2, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private toggleGenerateReports()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getGenerateReports(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "generate_report"

    invoke-virtual {v0, v2, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private toggleHiddenFiles()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getHiddenFiles(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "cb_hidden_files"

    invoke-virtual {v0, v2, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private update()V
    .locals 4

    const v0, 0x7f080122

    .line 387
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v2, "cb_is_premium"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f11012b

    goto :goto_0

    :cond_0
    const v1, 0x7f110027

    :goto_0
    invoke-virtual {p0, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012c

    .line 388
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v2, "cb_is_premium_upgrade"

    invoke-virtual {v1, v2, v3}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mScanSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDirectScan(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 390
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mGenerateReportsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getGenerateReports(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 391
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mHiddenFilesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getHiddenFiles(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 392
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mExplorerSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDirectExplorer(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 394
    :try_start_0
    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDefaultMethod(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mDefaultMethodName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mDefaultMethodName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 398
    :catch_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings;->mDefaultMethodName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method synthetic lambda$showItems$0$com-cbinnovations-androideraser-settings-Settings(Lcom/android/billingclient/api/ProductDetails;Landroid/view/View;)V
    .locals 0

    .line 635
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/settings/Settings;->purchaseItem(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 361
    invoke-super {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/SubCheckActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/cbinnovations/androideraser/SubCheckActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0022

    .line 101
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->setContentView(I)V

    const p1, 0x7f110148

    .line 102
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->initOnCreate()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    .line 333
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 457
    invoke-super {p0}, Lcom/cbinnovations/androideraser/SubCheckActivity;->onDestroy()V

    .line 458
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->deInitGoogle()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f080044

    if-eq v0, v1, :cond_0

    .line 346
    invoke-super {p0, p1}, Lcom/cbinnovations/androideraser/SubCheckActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->dialogFeedback()V

    return v2

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->finish()V

    return v2
.end method

.method protected onResume()V
    .locals 0

    .line 323
    invoke-super {p0}, Lcom/cbinnovations/androideraser/SubCheckActivity;->onResume()V

    .line 324
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->update()V

    return-void
.end method

.method public purchaseItem(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)V
    .locals 3

    .line 645
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    .line 649
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 650
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    goto :goto_0

    .line 651
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 652
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 653
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 654
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 646
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 658
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 659
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 661
    iget-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p2, p0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 663
    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->checkProfessional(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const p2, 0x7f110083

    .line 666
    invoke-virtual {p0, p2}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 667
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
