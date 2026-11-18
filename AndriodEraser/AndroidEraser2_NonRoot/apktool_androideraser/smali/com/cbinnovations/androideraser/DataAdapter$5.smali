.class Lcom/cbinnovations/androideraser/DataAdapter$5;
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


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
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

    .line 146
    iput-object p2, p0, Lcom/cbinnovations/androideraser/DataAdapter$5;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/DataAdapter$5;->val$childItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$5;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$5;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter;->-$$Nest$mhasDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$5;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter;->-$$Nest$fgetonDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter;)Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter$5;->val$groupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/DataAdapter$5;->val$childItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-interface {p1, v0, v1}, Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;->onChildClicked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    :cond_0
    return-void
.end method
