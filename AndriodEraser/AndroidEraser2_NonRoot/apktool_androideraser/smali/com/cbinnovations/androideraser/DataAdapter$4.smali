.class Lcom/cbinnovations/androideraser/DataAdapter$4;
.super Ljava/lang/Object;
.source "DataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/DataAdapter;->onBindChildViewHolder(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/DataAdapter;

.field final synthetic val$childItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

.field final synthetic val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

.field final synthetic val$holder:Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
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

    .line 137
    iput-object p2, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iput-object p4, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->val$childItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 139
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter;->-$$Nest$mhasDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter;->-$$Nest$fgetonDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter;)Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->val$childItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/DataAdapter$4;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;->onChildChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;ZZ)V

    :cond_0
    return-void
.end method
