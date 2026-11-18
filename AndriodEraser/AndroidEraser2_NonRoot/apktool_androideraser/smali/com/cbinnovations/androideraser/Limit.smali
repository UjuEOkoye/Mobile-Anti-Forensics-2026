.class public Lcom/cbinnovations/androideraser/Limit;
.super Ljava/lang/Object;
.source "Limit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/Limit$Pair;
    }
.end annotation


# instance fields
.field private amount:J

.field private final date:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;J)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/cbinnovations/androideraser/Limit;->dateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/Limit;->date:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lcom/cbinnovations/androideraser/Limit;->amount:J

    return-void
.end method

.method public static dateFormat()Ljava/text/DateFormat;
    .locals 3

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyyyy"

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public decrease(Ljava/lang/Long;)V
    .locals 4

    .line 28
    iget-wide v0, p0, Lcom/cbinnovations/androideraser/Limit;->amount:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cbinnovations/androideraser/Limit;->amount:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 30
    iput-wide v2, p0, Lcom/cbinnovations/androideraser/Limit;->amount:J

    :cond_0
    return-void
.end method

.method public getAmount()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/cbinnovations/androideraser/Limit;->amount:J

    return-wide v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Limit;->date:Ljava/lang/String;

    return-object v0
.end method

.method public increase(Ljava/lang/Long;)V
    .locals 4

    .line 24
    iget-wide v0, p0, Lcom/cbinnovations/androideraser/Limit;->amount:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cbinnovations/androideraser/Limit;->amount:J

    return-void
.end method
