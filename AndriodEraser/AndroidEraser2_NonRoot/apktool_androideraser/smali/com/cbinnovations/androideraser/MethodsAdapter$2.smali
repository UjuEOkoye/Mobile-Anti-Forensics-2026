.class Lcom/cbinnovations/androideraser/MethodsAdapter$2;
.super Ljava/lang/Object;
.source "MethodsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/MethodsAdapter;->onBindGroupViewHolder(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

.field final synthetic val$holder:Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;

.field final synthetic val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)V
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

    .line 75
    iput-object p2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    iput-object p3, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->val$holder:Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 77
    iget-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->val$holder:Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->-$$Nest$fgetgroupIndicator(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->-$$Nest$mtoggleGroup(Lcom/cbinnovations/androideraser/MethodsAdapter;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;Landroid/widget/ImageView;)V

    .line 78
    iget-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->val$holder:Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->-$$Nest$fgetgroupDivider(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->-$$Nest$fgetmListItems(Lcom/cbinnovations/androideraser/MethodsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/MethodsAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$2;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$misExpanded(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Z

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

    return-void
.end method
