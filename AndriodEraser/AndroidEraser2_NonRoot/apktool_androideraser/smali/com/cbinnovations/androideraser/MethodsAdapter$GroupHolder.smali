.class Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MethodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/MethodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupHolder"
.end annotation


# instance fields
.field private final groupDivider:Landroid/view/View;

.field private final groupIcon:Landroid/widget/ImageView;

.field private final groupIndicator:Landroid/widget/ImageView;

.field private final groupRadioButton:Landroid/widget/CheckBox;

.field private final groupTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetgroupDivider(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupDivider:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupIcon(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupIndicator(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupRadioButton(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupRadioButton:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupTitle(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupTitle:Landroid/widget/TextView;

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

    .line 231
    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->this$0:Lcom/cbinnovations/androideraser/MethodsAdapter;

    .line 232
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0800ec

    .line 233
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupIcon:Landroid/widget/ImageView;

    const p1, 0x7f0800f2

    .line 234
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupTitle:Landroid/widget/TextView;

    const p1, 0x7f0800ed

    .line 235
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0800ef

    .line 236
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupRadioButton:Landroid/widget/CheckBox;

    const p1, 0x7f0800ea

    .line 237
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->groupDivider:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/MethodsAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;-><init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Landroid/view/View;)V

    return-void
.end method
