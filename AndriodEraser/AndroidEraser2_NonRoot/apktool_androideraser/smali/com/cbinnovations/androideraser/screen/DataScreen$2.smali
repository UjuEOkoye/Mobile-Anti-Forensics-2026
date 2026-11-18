.class Lcom/cbinnovations/androideraser/screen/DataScreen$2;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/DataScreen;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/DataScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDirectScan(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$mupdateDataText(Lcom/cbinnovations/androideraser/screen/DataScreen;)V

    .line 129
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fgetmButtonScan(Lcom/cbinnovations/androideraser/screen/DataScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_0
    return-void
.end method
