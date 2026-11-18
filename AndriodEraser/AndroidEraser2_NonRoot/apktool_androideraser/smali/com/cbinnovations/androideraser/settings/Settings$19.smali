.class Lcom/cbinnovations/androideraser/settings/Settings$19;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings;->initGoogle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/settings/Settings;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 472
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPurchasesUpdated$0$com-cbinnovations-androideraser-settings-Settings$19(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 501
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const-class v1, Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/settings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 502
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/settings/Settings;->finishAffinity()V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 474
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    .line 475
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 478
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 479
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 480
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 482
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 484
    iget-object v2, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$fgetbillingClient(Lcom/cbinnovations/androideraser/settings/Settings;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v2

    iget-object v3, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$fgetacknowledgePurchaseResponseListener(Lcom/cbinnovations/androideraser/settings/Settings;)Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 488
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 489
    const-string p2, "com.cbinnovations.androideraser.premium"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 490
    iget-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v0, "cb_is_premium"

    invoke-virtual {p2, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    goto :goto_0

    .line 497
    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f110164

    .line 498
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110165

    .line 499
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/cbinnovations/androideraser/settings/Settings$19$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/cbinnovations/androideraser/settings/Settings$19$$ExternalSyntheticLambda0;-><init>(Lcom/cbinnovations/androideraser/settings/Settings$19;)V

    const v0, 0x7f110137

    .line 500
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 504
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 505
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 507
    :cond_4
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/SubCheckActivity;->checkProfessional(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void

    .line 510
    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_6

    .line 511
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$19;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/SubCheckActivity;->checkProfessional(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method
