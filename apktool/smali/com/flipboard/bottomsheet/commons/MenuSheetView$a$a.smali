.class Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;
.super Ljava/lang/Object;
.source "MenuSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/TextView;

.field final synthetic c:Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 347
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;->c:Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    sget v0, Lcom/yelp/android/cq/a$c;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;->a:Landroid/widget/ImageView;

    .line 349
    sget v0, Lcom/yelp/android/cq/a$c;->label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;->b:Landroid/widget/TextView;

    .line 350
    return-void
.end method


# virtual methods
.method public a(Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method
