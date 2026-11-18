.class Lcom/cbinnovations/androideraser/DataAdapter$3;
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

.field final synthetic val$holder:Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)V
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

    .line 114
    iput-object p2, p0, Lcom/cbinnovations/androideraser/DataAdapter$3;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$3;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$3;->val$holder:Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method
