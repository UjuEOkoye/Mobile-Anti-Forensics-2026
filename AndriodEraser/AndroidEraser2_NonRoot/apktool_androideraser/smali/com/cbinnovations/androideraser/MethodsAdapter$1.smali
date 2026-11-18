.class Lcom/cbinnovations/androideraser/MethodsAdapter$1;
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

.field final synthetic val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V
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

    .line 68
    iput-object p2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$1;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$1;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$1;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->-$$Nest$mhasDataAdapterListener(Lcom/cbinnovations/androideraser/MethodsAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$1;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->-$$Nest$fgetonDataAdapterListener(Lcom/cbinnovations/androideraser/MethodsAdapter;)Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$1;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    invoke-interface {p1, v0}, Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;->onGroupChecked(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V

    :cond_0
    return-void
.end method
