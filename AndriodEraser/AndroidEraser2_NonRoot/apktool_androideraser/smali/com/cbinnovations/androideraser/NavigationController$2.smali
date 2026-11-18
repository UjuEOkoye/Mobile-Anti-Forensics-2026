.class Lcom/cbinnovations/androideraser/NavigationController$2;
.super Ljava/lang/Object;
.source "NavigationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/NavigationController;->setNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/NavigationController;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/NavigationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController$2;->this$0:Lcom/cbinnovations/androideraser/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController$2;->this$0:Lcom/cbinnovations/androideraser/NavigationController;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/NavigationController;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->jumpToItem(Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method
