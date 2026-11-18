.class Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MethodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/MethodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildHolder"
.end annotation


# instance fields
.field private final childText:Landroid/widget/TextView;

.field private final childTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetchildText(Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;->childText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchildTitle(Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;->childTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    .line 248
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080089

    .line 249
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;->childTitle:Landroid/widget/TextView;

    const p1, 0x7f080088

    .line 250
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;->childText:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/MethodsAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;-><init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Landroid/view/View;)V

    return-void
.end method
