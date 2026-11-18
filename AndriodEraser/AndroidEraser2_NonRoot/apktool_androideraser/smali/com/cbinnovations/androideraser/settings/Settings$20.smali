.class Lcom/cbinnovations/androideraser/settings/Settings$20;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


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

    .line 518
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBillingSetupFinished$0$com-cbinnovations-androideraser-settings-Settings$20(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda0;-><init>(Lcom/cbinnovations/androideraser/settings/Settings$20;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onBillingSetupFinished$1$com-cbinnovations-androideraser-settings-Settings$20(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    .line 533
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 534
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$mshowItems(Lcom/cbinnovations/androideraser/settings/Settings;Ljava/util/List;)V

    return-void

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const-string p2, "inapp"

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$monError(Lcom/cbinnovations/androideraser/settings/Settings;Ljava/lang/String;)V

    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 520
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 521
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 522
    const-string v1, "com.cbinnovations.androideraser.premium"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    .line 523
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 524
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    const-string v1, "inapp"

    .line 525
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v0

    .line 523
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$fgetbillingClient(Lcom/cbinnovations/androideraser/settings/Settings;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    .line 530
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/settings/Settings$20$$ExternalSyntheticLambda1;-><init>(Lcom/cbinnovations/androideraser/settings/Settings$20;)V

    .line 529
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$monError(Lcom/cbinnovations/androideraser/settings/Settings;)V

    .line 568
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const v1, 0x7f080130

    invoke-virtual {p1, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const v2, 0x7f08011f

    invoke-virtual {p1, v2}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 570
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-virtual {p1, v2}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const v2, 0x7f080136

    invoke-virtual {p1, v2}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$20;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const v1, 0x7f0800ca

    invoke-virtual {p1, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
