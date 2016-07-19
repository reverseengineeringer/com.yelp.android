.class Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$2;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes$2;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v3}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getAttachment()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3fc

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    return-void
.end method
