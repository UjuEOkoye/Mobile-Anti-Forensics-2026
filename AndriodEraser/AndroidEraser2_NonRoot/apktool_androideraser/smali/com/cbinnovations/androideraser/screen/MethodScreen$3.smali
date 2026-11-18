.class Lcom/cbinnovations/androideraser/screen/MethodScreen$3;
.super Ljava/lang/Object;
.source "MethodScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 240
    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$3;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 242
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$3;->this$0:Lcom/cbinnovations/androideraser/screen/MethodScreen;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->-$$Nest$fgetmMethodsAdapter(Lcom/cbinnovations/androideraser/screen/MethodScreen;)Lcom/cbinnovations/androideraser/MethodsAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen$3;->val$methodItem:Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter;->updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V

    return-void
.end method
