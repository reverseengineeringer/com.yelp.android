.class Lcom/yelp/android/ui/activities/mutatebiz/t;
.super Ljava/lang/Object;
.source "EditField.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditField;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditField;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/t;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_0

    invoke-static {p3}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/t;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditField;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->c()V

    .line 150
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
