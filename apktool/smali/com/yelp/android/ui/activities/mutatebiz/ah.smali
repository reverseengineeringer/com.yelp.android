.class public interface abstract Lcom/yelp/android/ui/activities/mutatebiz/ah;
.super Ljava/lang/Object;
.source "TextWithData.java"


# virtual methods
.method public abstract a(Landroid/net/Uri;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V
.end method

.method public abstract getAttachment()Landroid/net/Uri;
.end method

.method public abstract getCharSequenceData()Ljava/lang/CharSequence;
.end method

.method public abstract getParcelableArrayData()[Landroid/os/Parcelable;
.end method

.method public abstract getParcelableArrayListData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract performClick()Z
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method
