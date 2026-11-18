.class Lcom/cbinnovations/androideraser/DataAdapter$1;
.super Ljava/lang/Object;
.source "DataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/DataAdapter;->onBindGroupViewHolder(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/DataAdapter;

.field final synthetic val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

.field final synthetic val$holder:Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
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

    .line 92
    iput-object p2, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 94
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->hasItems()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/DataAdapter;->-$$Nest$mtoggleGroup(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

    .line 96
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupDivider(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/DataAdapter;->-$$Nest$fgetmListItems(Lcom/cbinnovations/androideraser/DataAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/DataAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter;->-$$Nest$mhasDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter;->-$$Nest$fgetonDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter;)Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/DataAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;->onGroupChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Z)V

    :cond_3
    return-void
.end method
