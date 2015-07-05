.class Landroid/support/v7/widget/de;
.super Landroid/view/animation/Animation;
.source "SwitchCompat.java"


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Landroid/support/v7/widget/de;->c:Landroid/support/v7/widget/SwitchCompat;

    iput p2, p0, Landroid/support/v7/widget/de;->a:F

    iput p3, p0, Landroid/support/v7/widget/de;->b:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/de;->c:Landroid/support/v7/widget/SwitchCompat;

    iget v1, p0, Landroid/support/v7/widget/de;->a:F

    iget v2, p0, Landroid/support/v7/widget/de;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/support/v7/widget/SwitchCompat;F)V

    .line 717
    return-void
.end method
