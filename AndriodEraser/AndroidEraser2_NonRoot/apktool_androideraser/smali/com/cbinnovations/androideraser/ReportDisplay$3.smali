.class synthetic Lcom/cbinnovations/androideraser/ReportDisplay$3;
.super Ljava/lang/Object;
.source "ReportDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ReportDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cbinnovations$androideraser$shredder$report$ReportRow$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 341
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->values()[Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cbinnovations/androideraser/ReportDisplay$3;->$SwitchMap$com$cbinnovations$androideraser$shredder$report$ReportRow$Type:[I

    :try_start_0
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Section:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cbinnovations/androideraser/ReportDisplay$3;->$SwitchMap$com$cbinnovations$androideraser$shredder$report$ReportRow$Type:[I

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->Row:Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
