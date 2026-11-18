.class Lcom/cbinnovations/androideraser/screen/DataScreen$9;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/DataScreen;->scanFor(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

.field final synthetic val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
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

    .line 481
    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Ljava/lang/String;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->setScanned()V

    .line 493
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->setChildItems([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    .line 494
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getGroupHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->setHeaderText(Ljava/lang/String;)V

    .line 495
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fgetmAdapter(Lcom/cbinnovations/androideraser/screen/DataScreen;)Lcom/cbinnovations/androideraser/DataAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/DataAdapter;->updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V

    .line 496
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$mupdateDataText(Lcom/cbinnovations/androideraser/screen/DataScreen;)V

    return-void
.end method

.method public onSearchStarted()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->setScanning()V

    .line 484
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fputhasScannedGlobal(Lcom/cbinnovations/androideraser/screen/DataScreen;Z)V

    .line 485
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fgetmAdapter(Lcom/cbinnovations/androideraser/screen/DataScreen;)Lcom/cbinnovations/androideraser/DataAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$9;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/DataAdapter;->startGroupSearchAnimation(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

    return-void
.end method

.method public onSearchStopped()V
    .locals 0

    return-void
.end method
