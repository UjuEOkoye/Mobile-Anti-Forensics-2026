.class Lcom/cbinnovations/androideraser/screen/DataScreen$4;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/DataScreen;->onBackPressed()V
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

    .line 257
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$4;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$4;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fputdoubleBackToExitPressedOnce(Lcom/cbinnovations/androideraser/screen/DataScreen;Z)V

    return-void
.end method
