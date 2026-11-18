.class public final synthetic Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/cbinnovations/androideraser/settings/Settings;

.field public final synthetic f$1:Lcom/android/billingclient/api/ProductDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda0;->f$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda0;->f$1:Lcom/android/billingclient/api/ProductDetails;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda0;->f$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/settings/Settings$$ExternalSyntheticLambda0;->f$1:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0, v1, p1}, Lcom/cbinnovations/androideraser/settings/Settings;->lambda$showItems$0$com-cbinnovations-androideraser-settings-Settings(Lcom/android/billingclient/api/ProductDetails;Landroid/view/View;)V

    return-void
.end method
