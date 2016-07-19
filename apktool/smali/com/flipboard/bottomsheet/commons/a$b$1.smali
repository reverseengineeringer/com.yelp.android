.class Lcom/flipboard/bottomsheet/commons/a$b$1;
.super Landroid/os/AsyncTask;
.source "IntentPickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flipboard/bottomsheet/commons/a$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/commons/a$a;

.field final synthetic b:Lcom/flipboard/bottomsheet/commons/a$b$a;

.field final synthetic c:Lcom/flipboard/bottomsheet/commons/a$b;


# direct methods
.method constructor <init>(Lcom/flipboard/bottomsheet/commons/a$b;Lcom/flipboard/bottomsheet/commons/a$a;Lcom/flipboard/bottomsheet/commons/a$b$a;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a$b$1;->c:Lcom/flipboard/bottomsheet/commons/a$b;

    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/a$b$1;->a:Lcom/flipboard/bottomsheet/commons/a$a;

    iput-object p3, p0, Lcom/flipboard/bottomsheet/commons/a$b$1;->b:Lcom/flipboard/bottomsheet/commons/a$b$a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b$1;->a:Lcom/flipboard/bottomsheet/commons/a$a;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/a$a;->d:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/a$b$1;->c:Lcom/flipboard/bottomsheet/commons/a$b;

    invoke-static {v1}, Lcom/flipboard/bottomsheet/commons/a$b;->a(Lcom/flipboard/bottomsheet/commons/a$b;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b$1;->a:Lcom/flipboard/bottomsheet/commons/a$a;

    iput-object p1, v0, Lcom/flipboard/bottomsheet/commons/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b$1;->a:Lcom/flipboard/bottomsheet/commons/a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 250
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b$1;->b:Lcom/flipboard/bottomsheet/commons/a$b$a;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/a$b$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/a$b$1;->a([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/a$b$1;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
