.class Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/DataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildHolder"
.end annotation


# instance fields
.field private final childCheckBox:Landroid/widget/CheckBox;

.field private final childDivider:Landroid/view/View;

.field private final childIcon:Landroid/widget/ImageView;

.field private final childInfo:Landroid/widget/TextView;

.field private final childText:Landroid/widget/TextView;

.field private final childTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/DataAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetchildCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchildDivider(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childDivider:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchildIcon(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchildInfo(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchildText(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchildTitle(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/DataAdapter;Landroid/view/View;)V
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

    .line 338
    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->this$0:Lcom/cbinnovations/androideraser/DataAdapter;

    .line 339
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080086

    .line 340
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childIcon:Landroid/widget/ImageView;

    const p1, 0x7f080089

    .line 341
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childTitle:Landroid/widget/TextView;

    const p1, 0x7f080088

    .line 342
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childText:Landroid/widget/TextView;

    const p1, 0x7f080087

    .line 343
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childInfo:Landroid/widget/TextView;

    const p1, 0x7f080085

    .line 344
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childCheckBox:Landroid/widget/CheckBox;

    const p1, 0x7f0800b3

    .line 345
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->childDivider:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/DataAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/DataAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Landroid/view/View;)V

    return-void
.end method
