.class Landroid/support/v7/widget/ad;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# instance fields
.field public a:Landroid/support/v7/widget/ce;

.field public b:Landroid/support/v7/widget/ce;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/ce;

    .line 70
    iput-object p2, p0, Landroid/support/v7/widget/ad;->b:Landroid/support/v7/widget/ce;

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;IIII)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ad;-><init>(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;)V

    .line 76
    iput p3, p0, Landroid/support/v7/widget/ad;->c:I

    .line 77
    iput p4, p0, Landroid/support/v7/widget/ad;->d:I

    .line 78
    iput p5, p0, Landroid/support/v7/widget/ad;->e:I

    .line 79
    iput p6, p0, Landroid/support/v7/widget/ad;->f:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;IIIILandroid/support/v7/widget/v;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p6}, Landroid/support/v7/widget/ad;-><init>(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;IIII)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ad;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ad;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ad;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ad;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ad;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
