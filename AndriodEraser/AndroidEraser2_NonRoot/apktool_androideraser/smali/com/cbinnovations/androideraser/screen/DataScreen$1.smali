.class Lcom/cbinnovations/androideraser/screen/DataScreen$1;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/DataScreen;->initOnCreate()V
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

    .line 100
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 102
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    const-class v2, Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$1;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/cbinnovations/androideraser/utils/Permission;->request(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
