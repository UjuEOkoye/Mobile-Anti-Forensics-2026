.class Lcom/cbinnovations/androideraser/NavigationController$3;
.super Ljava/lang/Object;
.source "NavigationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/NavigationController;->showNext(Landroidx/documentfile/provider/DocumentFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/NavigationController;

.field final synthetic val$item:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/NavigationController;Landroidx/documentfile/provider/DocumentFile;)V
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

    .line 85
    iput-object p2, p0, Lcom/cbinnovations/androideraser/NavigationController$3;->val$item:Landroidx/documentfile/provider/DocumentFile;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController$3;->this$0:Lcom/cbinnovations/androideraser/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController$3;->this$0:Lcom/cbinnovations/androideraser/NavigationController;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/NavigationController;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController$3;->val$item:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->jumpToItem(Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method
