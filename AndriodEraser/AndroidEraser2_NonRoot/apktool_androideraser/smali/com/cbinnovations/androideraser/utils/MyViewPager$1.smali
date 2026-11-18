.class Lcom/cbinnovations/androideraser/utils/MyViewPager$1;
.super Ljava/lang/Object;
.source "MyViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/utils/MyViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/utils/MyViewPager;

.field final synthetic val$listener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/utils/MyViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
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

    .line 40
    iput-object p2, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager$1;->val$listener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager$1;->this$0:Lcom/cbinnovations/androideraser/utils/MyViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager$1;->val$listener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager$1;->val$listener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager$1;->this$0:Lcom/cbinnovations/androideraser/utils/MyViewPager;

    invoke-static {v0, p1}, Lcom/cbinnovations/androideraser/utils/MyViewPager;->-$$Nest$fputcurrentPage(Lcom/cbinnovations/androideraser/utils/MyViewPager;I)V

    .line 47
    iget-object v0, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager$1;->val$listener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method
