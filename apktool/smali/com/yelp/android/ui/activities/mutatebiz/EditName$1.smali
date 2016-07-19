.class Lcom/yelp/android/ui/activities/mutatebiz/EditName$1;
.super Ljava/lang/Object;
.source "EditName.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditName;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/EditName;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditName$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/EditName;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a(Lcom/yelp/android/ui/activities/mutatebiz/EditName;)V

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
