.class Lcom/cbinnovations/androideraser/screen/MethodScreen$2;
.super Ljava/lang/Object;
.source "MethodScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/screen/MethodScreen;->showSummary(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

.field final synthetic val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/screen/MethodScreen;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V
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

    .line 233
    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 235
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/screen/MethodScreen;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v0, "cb_ask_default_method"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->-$$Nest$fgetmMethodsAdapter(Lcom/cbinnovations/androideraser/screen/MethodScreen;)Lcom/cbinnovations/androideraser/MethodsAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/MethodsAdapter;->updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V

    .line 237
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->getEraseMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->startProcess(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    .line 238
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->-$$Nest$fgetmMethodsAdapter(Lcom/cbinnovations/androideraser/screen/MethodScreen;)Lcom/cbinnovations/androideraser/MethodsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->collapseAll()V

    return-void
.end method
