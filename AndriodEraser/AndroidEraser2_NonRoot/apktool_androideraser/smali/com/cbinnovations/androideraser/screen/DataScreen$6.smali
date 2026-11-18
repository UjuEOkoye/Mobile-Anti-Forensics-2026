.class Lcom/cbinnovations/androideraser/screen/DataScreen$6;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$addedNotPer:[Z

.field final synthetic val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/PermissionAdapter;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 326
    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$addedNotPer:[Z

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 329
    :try_start_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/PermissionAdapter;->getItem(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-nez p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fputaskingFileManagerPer(Lcom/cbinnovations/androideraser/screen/DataScreen;Z)V

    .line 331
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/PermissionAdapter;->getItem(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/cbinnovations/androideraser/utils/Permission;->request(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    invoke-virtual {v3, v0}, Lcom/cbinnovations/androideraser/PermissionAdapter;->getItem(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 334
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    invoke-virtual {v1, v0}, Lcom/cbinnovations/androideraser/PermissionAdapter;->getItem(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/cbinnovations/androideraser/utils/Permission;->request(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$addedNotPer:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    invoke-virtual {v0, v2}, Lcom/cbinnovations/androideraser/PermissionAdapter;->getItem(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 337
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->val$permissionAdapter:Lcom/cbinnovations/androideraser/PermissionAdapter;

    invoke-virtual {v0, v2}, Lcom/cbinnovations/androideraser/PermissionAdapter;->getItem(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/cbinnovations/androideraser/utils/Permission;->request(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 340
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$6;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fgetpermissionDialog(Lcom/cbinnovations/androideraser/screen/DataScreen;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 343
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
