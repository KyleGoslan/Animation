# Animation

func resetCell() {
        avatarImageView.alpha = 0
        avatarImageView.transform = CGAffineTransformMakeScale(0, 0)
        titleLabel.textColor = .blackColor()
    }
    
    func animateCell() {
        resetCell()
        
        UIView.animateWithDuration(3.0, delay: 0, usingSpringWithDamping:0.2, initialSpringVelocity: 1, options: [], animations: {
            self.avatarImageView.alpha = 1
            self.avatarImageView.transform = CGAffineTransformMakeScale(1, 1)
            self.titleLabel.center.x = self.titleLabel.center.x + 200
            }) { completion in
                self.titleLabel.textColor = .redColor()
        }
        
        
    }
