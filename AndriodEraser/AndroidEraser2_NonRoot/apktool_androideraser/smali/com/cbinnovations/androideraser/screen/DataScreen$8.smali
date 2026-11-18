.class Lcom/cbinnovations/androideraser/screen/DataScreen$8;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/DataScreen;->onChildChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

.field final synthetic val$childItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

.field final synthetic val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

.field final synthetic val$storage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 438
    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;->val$storage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iput-object p4, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;->val$childItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 440
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;->val$storage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;->val$childItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-static {p1, p2, v0, v1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$maskStoragePermission(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    return-void
.end method
