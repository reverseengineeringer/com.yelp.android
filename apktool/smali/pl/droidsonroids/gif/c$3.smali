.class Lpl/droidsonroids/gif/c$3;
.super Lpl/droidsonroids/gif/l;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lpl/droidsonroids/gif/c;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/c;Lpl/droidsonroids/gif/c;I)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lpl/droidsonroids/gif/c$3;->b:Lpl/droidsonroids/gif/c;

    iput p3, p0, Lpl/droidsonroids/gif/c$3;->a:I

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/l;-><init>(Lpl/droidsonroids/gif/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 523
    iget-object v0, p0, Lpl/droidsonroids/gif/c$3;->b:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    iget v1, p0, Lpl/droidsonroids/gif/c$3;->a:I

    iget-object v2, p0, Lpl/droidsonroids/gif/c$3;->b:Lpl/droidsonroids/gif/c;

    iget-object v2, v2, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->b(ILandroid/graphics/Bitmap;)V

    .line 524
    iget-object v0, p0, Lpl/droidsonroids/gif/c$3;->b:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/g;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lpl/droidsonroids/gif/g;->sendEmptyMessageAtTime(IJ)Z

    .line 525
    return-void
.end method
