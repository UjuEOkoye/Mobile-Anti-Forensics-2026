.class Lcom/cbinnovations/androideraser/screen/DataScreen$3;
.super Ljava/lang/Object;
.source "DataScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/DataScreen;->initMainButton()V
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

    .line 136
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fgethasScannedGlobal(Lcom/cbinnovations/androideraser/screen/DataScreen;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fgetmAdapter(Lcom/cbinnovations/androideraser/screen/DataScreen;)Lcom/cbinnovations/androideraser/DataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/DataAdapter;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDefaultMethod(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-virtual {v1, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->setData(Ljava/util/ArrayList;)V

    if-nez v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->openPanel()V

    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    sget-object v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-direct {v1, v0, v2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    invoke-virtual {p1, v1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->showSummary(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V

    return-void

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$maskPermissions(Lcom/cbinnovations/androideraser/screen/DataScreen;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    const v2, 0x7f110020

    invoke-virtual {v1, v2}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$mupdateButton(Lcom/cbinnovations/androideraser/screen/DataScreen;ZLjava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->-$$Nest$fgetmAdapter(Lcom/cbinnovations/androideraser/screen/DataScreen;)Lcom/cbinnovations/androideraser/DataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/DataAdapter;->getListItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    .line 153
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/DataScreen;

    check-cast v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {v1, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->onGroupClicked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
