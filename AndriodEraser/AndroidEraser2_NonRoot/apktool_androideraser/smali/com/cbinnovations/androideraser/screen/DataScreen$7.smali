.class Lcom/cbinnovations/androideraser/screen/DataScreen$7;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/DataScreen;->askPermissions()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

.field final synthetic val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/PermissionAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$7;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$7;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 349
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$7;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$7;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    invoke-virtual {p2, p3}, Lcom/cbinnovations/androideraser/PermissionAdapter;->getItem(I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lcom/cbinnovations/androideraser/utils/Permission;->request(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
